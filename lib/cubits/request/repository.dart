part of 'cubit.dart';

class RequestRepository {
  Stream<DocumentSnapshot<Map<String, dynamic>>> fetch() =>
      RequestDataProvider.fetch();

  Future<void> sendRequest(Request request) =>
      RequestDataProvider.sendRequest(request);

  Future<void> delete(int index) => RequestDataProvider.delete(index);
}
