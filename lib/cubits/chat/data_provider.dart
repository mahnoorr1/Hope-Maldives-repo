part of 'cubit.dart';

class ChatDataProvider {
  static final firestore = FirebaseFirestore.instance;
  static final chatCollection = firestore.collection('chats');

  static Future<void> send(Message message) async {
    try {
      final ref = firestore.collection('chats/${message.from}/messages');

      await chatCollection.doc(message.from).set({
        'uid': message.from,
        'username': FirebaseAuth.instance.currentUser!.displayName,
      });

      await ref.add(message.toMap());
    } on FirebaseException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Stream<QuerySnapshot<Map<String, dynamic>>> fetch() {
    try {
      final messagesStream = firestore
          .collection(
              'chats/${FirebaseAuth.instance.currentUser!.uid}/messages')
          .orderBy('createdAt', descending: true)
          .snapshots();

      return messagesStream.asBroadcastStream();
    } on FirebaseException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<void> clean() async {
    try {
      final data = await firestore
          .collection(
              'chats/${FirebaseAuth.instance.currentUser!.uid}/messages')
          .get();

      for (var d in data.docs) {
        await d.reference.delete();
      }

      await firestore
          .collection('chats')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .delete();
    } on FirebaseException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
