part of 'cubit.dart';

class ChatRepository {
  Future<void> send(Message message) => ChatDataProvider.send(message);

  Future<void> clean() => ChatDataProvider.clean();

  Stream<QuerySnapshot<Map<String, dynamic>>> fetch() =>
      ChatDataProvider.fetch();
}
