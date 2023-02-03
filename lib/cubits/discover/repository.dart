part of 'cubit.dart';

class DiscoverRepository {
  Stream<DocumentSnapshot<Map<String, dynamic>>> fetch() =>
      DiscoverDataProvider.fetch();
}
