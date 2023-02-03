part of 'cubit.dart';

class ReviewDataProvider {
  static final firebase = FirebaseFirestore.instance;
  static final products = firebase.collection('products').doc('data');

  static Future<void> send(
    String id,
    Review review, [
    bool? isHotel,
    bool? isResort,
    bool? isIsland,
    bool? isDiving,
    bool? isExcursion,
    bool? isTour,
  ]) async {
    try {
      List<Hotel> hotels = [];
      List<Resort> resorts = [];
      List<Island> islands = [];
      List<Diving> divings = [];
      List<Excursion> excs = [];
      List<Tour> tours = [];

      final raw = await products.get();
      if (isHotel!) {
        List data = raw.data()!['hotels'];
        hotels =
            List.generate(data.length, (index) => Hotel.fromMap(data[index]));

        for (var h in hotels) {
          if (h.id.contains(id)) {
            h.reviews.add(review);
          }
        }

        data = List.generate(hotels.length, (index) => hotels[index].toMap());
        await products.update({'hotels': data});
      } else if (isResort!) {
        List data = raw.data()!['resorts'];
        resorts =
            List.generate(data.length, (index) => Resort.fromMap(data[index]));
        for (var r in resorts) {
          if (r.id.contains(id)) {
            r.reviews.add(review);
          }
        }

        data = List.generate(resorts.length, (index) => resorts[index].toMap());
        await products.update({'resorts': data});
      } else if (isIsland!) {
        List data = raw.data()!['islands'];
        islands =
            List.generate(data.length, (index) => Island.fromMap(data[index]));
        for (var i in islands) {
          if (i.id.contains(id)) {
            i.reviews.add(review);
          }
        }

        data = List.generate(islands.length, (index) => islands[index].toMap());
        await products.update({'divings': data});
      } else if (isDiving!) {
        List data = raw.data()!['divings'];
        divings =
            List.generate(data.length, (index) => Diving.fromMap(data[index]));
        for (var d in divings) {
          if (d.id.contains(id)) {
            d.reviews.add(review);
          }
        }

        data = List.generate(divings.length, (index) => divings[index].toMap());
        await products.update({'excursions': data});
      } else if (isExcursion!) {
        List data = raw.data()!['excursions'];
        excs = List.generate(
            data.length, (index) => Excursion.fromMap(data[index]));
        for (var e in excs) {
          if (e.id.contains(id)) {
            e.reviews.add(review);
          }
        }

        data = List.generate(excs.length, (index) => excs[index].toMap());
        await products.update({'excursions': data});
      } else if (isTour!) {
        final raw = await firebase.collection('tours').get();
        List data = raw.docs;

        tours = List.generate(
          raw.docs.length,
          (index) => Tour.fromMap(
            data[index].data(),
          ),
        );

        for (var t in tours) {
          if (t.id.contains(id)) {
            t.reviews.add(review);
            await firebase.collection('tours').doc(id).update(t.toMap());
          }
        }
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
