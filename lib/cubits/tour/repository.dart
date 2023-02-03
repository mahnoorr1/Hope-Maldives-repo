part of 'cubit.dart';

class TourRepository {
  Future<List<Tour>> fetch() => TourDataProvider.fetch();
}
