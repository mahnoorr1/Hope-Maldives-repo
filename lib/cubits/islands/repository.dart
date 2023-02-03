part of 'cubit.dart';

class IslandsRepository {
  Stream<DocumentSnapshot<Map<String, dynamic>>> fetch() =>
      IslandsDataProvider.fetch();
}
