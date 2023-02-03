part of 'cubit.dart';

class HotelsRepository {
  Stream<DocumentSnapshot<Map<String, dynamic>>> fetch() =>
      HotelsDataProvider.fetch();
}
