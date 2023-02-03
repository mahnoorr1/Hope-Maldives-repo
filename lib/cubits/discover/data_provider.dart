part of 'cubit.dart';

class DiscoverDataProvider {
  static Stream<DocumentSnapshot<Map<String, dynamic>>> fetch() {
    try {
      final stream = FirebaseFirestore.instance
          .collection('discover')
          .doc('data')
          .snapshots();

      return stream.asBroadcastStream();
    } catch (e) {
      throw Exception("Internal Server Error");
    }
  }
}
