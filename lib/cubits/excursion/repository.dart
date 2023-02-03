part of 'cubit.dart';

class ExcursionRepository {
  Stream<DocumentSnapshot<Map<String, dynamic>>> fetch() =>
      ExcursionDataProvider.fetch();
}
