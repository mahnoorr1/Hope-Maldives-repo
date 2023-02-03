part of 'cubit.dart';

class RequestDataProvider {
  static final firebase = FirebaseFirestore.instance;
  static final requestDocuments = firebase
      .collection('requests')
      .doc(FirebaseAuth.instance.currentUser!.uid);

  static Stream<DocumentSnapshot<Map<String, dynamic>>> fetch() {
    try {
      final stream = requestDocuments.snapshots();

      return stream.asBroadcastStream();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<void> sendRequest(Request request) async {
    try {
      final raw = await requestDocuments.get();

      final data = raw.data() ?? {'requests': []};

      List reqs = data['requests'] ?? [];

      reqs.add(request.toMap());

      await requestDocuments //
          .set({'requests': reqs});
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<void> delete(int index) async {
    try {
      final raw = await requestDocuments.get();
      Map<String, dynamic>? map = raw.data();

      List data = map!['requests'] ?? [];

      data.removeAt(index);

      await requestDocuments.set({'requests': data});
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
