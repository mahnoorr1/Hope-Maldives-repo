part of 'cubit.dart';

class ResortsRepository {
  Stream<DocumentSnapshot<Map<String, dynamic>>> fetch() =>
      ResortsDataProvider.fetch();
}
