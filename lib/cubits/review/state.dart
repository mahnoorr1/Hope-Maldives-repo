part of 'cubit.dart';

@immutable
class ReviewState extends Equatable {
  final String? message;

  const ReviewState({
    this.message,
  });

  @override
  List<Object?> get props => [
        message,
      ];
}

@immutable
class ReviewDefault extends ReviewState {}

@immutable
class ReviewSendLoading extends ReviewState {
  const ReviewSendLoading() : super();
}

@immutable
class ReviewSendSuccess extends ReviewState {
  const ReviewSendSuccess() : super();
}

@immutable
class ReviewSendFailed extends ReviewState {
  const ReviewSendFailed({String? message}) : super(message: message);
}
