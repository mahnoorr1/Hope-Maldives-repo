part of 'cubit.dart';

class TourDataProvider {
  static final firestore = FirebaseFirestore.instance;
  static final tourCollection = firestore.collection('tours');

  static Future<List<Tour>> fetch() async {
    try {
      final raw = await tourCollection.get();
      final docs = raw.docs;

      List<Tour> tours = List.generate(
        docs.length,
        (index) => Tour.fromMap(
          docs[index].data(),
        ),
      );

      return tours;
    } catch (e) {
      throw Exception("Internal Server Error");
    }
  }
}
