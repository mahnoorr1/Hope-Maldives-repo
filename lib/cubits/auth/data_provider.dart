part of 'cubit.dart';

class AuthDataProvider {
  static final cache = Hive.box('users');
  static final firebaseFirestore = FirebaseFirestore.instance;
  static final userCollection = firebaseFirestore.collection('users');

  static Future<AuthData> fetch() async {
    try {
      final data = await userCollection
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get();

      final Map<String, dynamic>? raw = data.data();
      final authData = AuthData.fromMap(raw!);

      return authData;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<AuthData> login(String email, String password) async {
    try {
      User user = (await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: email, password: password))
          .user!;

      final data = await userCollection.doc(user.uid).get();
      final authData = AuthData.fromMap(data.data()!);

      cache.put(authData.id, authData);

      return authData;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "wrong-password":
          throw Exception(
              "Invalid password or email address. Please Try again!");

        case "user-not-found":
          throw Exception(
              "Account not found against this email address, please sign up!");

        case "invalid-email":
          throw Exception(
              "Invalid password or email address. Please Try again!");

        case "account-exists-with-different-credential":
          throw Exception(
              "Account already logged in via social login. Please try alternative way.");

        default:
          throw Exception(
            e.message,
          );
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<AuthData> signUp(
    String fullName,
    String email,
    String password,
  ) async {
    try {
      User user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      ))
          .user!;

      final authData = AuthData.fromMap({
        'id': user.uid,
        'fullName': fullName,
        'email': email,
      });

      await user.updateDisplayName(fullName);

      if (!user.emailVerified) {
        await user.sendEmailVerification();
      }

      await userCollection.doc(user.uid).set(authData.toMap());

      return authData;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "email-already-in-use":
          throw Exception("Email already in use, Try with different Email");
        case "invalid-email":
          throw Exception("Invalid email address!");
        case "account-exists-with-different-credential":
          throw Exception("Account already logged in");
        default:
          throw Exception(e.message);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<AuthData?> googleSignIn() async {
    try {
      final googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return null;
      }
      final googleAuth = await googleUser.authentication;

      final creds = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      UserCredential user =
          await FirebaseAuth.instance.signInWithCredential(creds);

      final authData = AuthData(
        id: user.user!.uid,
        fullName: googleUser.displayName!,
        email: googleUser.email,
      );

      cache.put(user.user!.uid, authData);

      await userCollection.doc(user.user!.uid).set(authData.toMap());

      return authData;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<AuthData?> facebookSignIn() async {
    try {
      // ignore: unnecessary_nullable_for_final_variable_declarations
      final LoginResult? loginResult = await FacebookAuth.instance.login();

      if (loginResult == null) {
        return null;
      }

      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);

      UserCredential user = await FirebaseAuth.instance
          .signInWithCredential(facebookAuthCredential);

      cache.put(user.user!.uid, user.user);

      final authData = AuthData(
        id: user.user!.uid,
        fullName: user.user!.displayName!,
        email: user.user!.email!,
      );

      await userCollection.doc(user.user!.uid).set(authData.toMap());

      return authData;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    } on PlatformException catch (e) {
      debugPrint(e.toString());
      throw Exception('Login cancelled!');
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<void> forgotPassword(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw Exception('No account has been registered against this Email');
      }
      throw Exception(e.message);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<void> logout() async {
    try {
      List<UserInfo> loginProviderInfo =
          FirebaseAuth.instance.currentUser!.providerData;

      await cache.delete(FirebaseAuth.instance.currentUser!.uid);

      for (var prov in loginProviderInfo) {
        if (prov.providerId.contains('password')) {
          await FirebaseAuth.instance.signOut();
        } else if (prov.providerId.contains('google.com')) {
          await GoogleSignIn().signOut();
        } else if (prov.providerId.contains('facebook.com')) {
          await FacebookAuth.instance.logOut();
        }
      }
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }
}
