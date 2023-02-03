part of 'cubit.dart';

class DivingRepository {
  Stream<DocumentSnapshot<Map<String, dynamic>>> fetch() =>
      DivingDataProvider.fetch();
}
