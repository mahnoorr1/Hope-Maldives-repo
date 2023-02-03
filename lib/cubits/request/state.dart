// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'cubit.dart';

@immutable
class RequestFetchState extends Equatable {
  static bool match(a, b) => a.fetch != b.fetch;

  final List<Request>? data;
  final String? message;

  const RequestFetchState({
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
class RequestFetchDefault extends RequestFetchState {}

@immutable
class RequestFetchLoading extends RequestFetchState {
  const RequestFetchLoading() : super();
}

@immutable
class RequestFetchSuccess extends RequestFetchState {
  const RequestFetchSuccess({List<Request>? data}) : super(data: data);
}

@immutable
class RequestFetchFailed extends RequestFetchState {
  const RequestFetchFailed({String? message}) : super(message: message);
}

@immutable
class RequestSendState extends Equatable {
  static bool match(a, b) => a.send != b.send;

  final String? message;

  const RequestSendState({
    this.message,
  });

  @override
  List<Object?> get props => [
        message,
      ];
}

@immutable
class RequestSendDefault extends RequestSendState {}

@immutable
class RequestSendLoading extends RequestSendState {
  const RequestSendLoading() : super();
}

@immutable
class RequestSendSuccess extends RequestSendState {
  const RequestSendSuccess() : super();
}

@immutable
class RequestSendFailed extends RequestSendState {
  const RequestSendFailed({String? message}) : super(message: message);
}

//delete
@immutable
class RequestDeleteState extends Equatable {
  static bool match(a, b) => a.delete != b.delete;

  final String? message;

  const RequestDeleteState({
    this.message,
  });

  @override
  List<Object?> get props => [
        message,
      ];
}

@immutable
class RequestDeleteDefault extends RequestDeleteState {}

@immutable
class RequestDeleteLoading extends RequestDeleteState {
  const RequestDeleteLoading() : super();
}

@immutable
class RequestDeleteSuccess extends RequestDeleteState {
  const RequestDeleteSuccess() : super();
}

@immutable
class RequestDeleteFailed extends RequestDeleteState {
  const RequestDeleteFailed({String? message}) : super(message: message);
}

// root-state
@immutable
class RequestState extends Equatable {
  final RequestFetchState? fetch;
  final RequestSendState? send;
  final RequestDeleteState? delete;

  const RequestState({
    this.fetch,
    this.send,
    this.delete,
  });

  @override
  List<Object?> get props => [
        fetch,
        send,
        delete,
      ];

  RequestState copyWith({
    RequestFetchState? fetch,
    RequestSendState? send,
    RequestDeleteState? delete,
  }) {
    return RequestState(
      fetch: fetch ?? this.fetch,
      send: send ?? this.send,
      delete: delete ?? this.delete,
    );
  }
}

@immutable
class RequestStateDefault extends RequestState {
  const RequestStateDefault()
      : super(
          fetch: const RequestFetchState(),
          send: const RequestSendState(),
          delete: const RequestDeleteState(),
        );
}
