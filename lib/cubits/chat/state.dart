part of 'cubit.dart';

@immutable
class ChatSendState extends Equatable {
  static bool match(a, b) => a.send != b.send;

  final Message? data;
  final String? message;

  const ChatSendState({
    this.data,
    this.message,
  });

  @override
  List<Object?> get props => [
        data,
        message,
      ];
}

@immutable
class ChatSendLoading extends ChatSendState {
  const ChatSendLoading() : super();
}

@immutable
class ChatSendSuccess extends ChatSendState {
  const ChatSendSuccess() : super();
}

@immutable
class ChatSendFailed extends ChatSendState {
  const ChatSendFailed({String? message}) : super(message: message);
}

@immutable
class ChatFetchState extends Equatable {
  static bool match(a, b) => a.fetch != b.fetch;

  final QuerySnapshot<Map<String, dynamic>>? data;
  final String? message;

  const ChatFetchState({
    this.data,
    this.message,
  });

  @override
  List<Object?> get props => [
        data,
        message,
      ];
}

@immutable
class ChatFetchLoading extends ChatFetchState {
  const ChatFetchLoading() : super();
}

@immutable
class ChatFetchSuccess extends ChatFetchState {
  const ChatFetchSuccess({QuerySnapshot<Map<String, dynamic>>? data})
      : super(data: data);
}

@immutable
class ChatFetchFailed extends ChatFetchState {
  const ChatFetchFailed({String? message}) : super(message: message);
}

@immutable
class ChatCleanState extends Equatable {
  static bool match(a, b) => a.clean != b.clean;

  final String? message;

  const ChatCleanState({
    this.message,
  });

  @override
  List<Object?> get props => [
        message,
      ];
}

@immutable
class ChatCleanLoading extends ChatCleanState {
  const ChatCleanLoading() : super();
}

@immutable
class ChatCleanSuccess extends ChatCleanState {
  const ChatCleanSuccess() : super();
}

@immutable
class ChatCleanFailed extends ChatCleanState {
  const ChatCleanFailed({String? message}) : super(message: message);
}

// root-state
@immutable
class ChatState extends Equatable {
  final ChatSendState? send;
  final ChatFetchState? fetch;
  final ChatCleanState? clean;

  const ChatState({
    this.send,
    this.fetch,
    this.clean,
  });

  @override
  List<Object?> get props => [
        send,
        fetch,
        clean,
      ];

  ChatState copyWith({
    ChatSendState? send,
    ChatFetchState? fetch,
    ChatCleanState? clean,
  }) {
    return ChatState(
      send: send ?? this.send,
      fetch: fetch ?? this.fetch,
      clean: clean ?? this.clean,
    );
  }
}

@immutable
class ChatStateDefault extends ChatState {
  const ChatStateDefault()
      : super(
          send: const ChatSendState(),
          fetch: const ChatFetchState(),
          clean: const ChatCleanState(),
        );
}
