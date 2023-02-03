part of 'cubit.dart';

@immutable
class DiscoverState extends Equatable {
  final List<Discover>? data;
  final String? message;

  const DiscoverState({
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
class DiscoverDefault extends DiscoverState {}

@immutable
class DiscoverFetchLoading extends DiscoverState {
  const DiscoverFetchLoading() : super();
}

@immutable
class DiscoverFetchSuccess extends DiscoverState {
  const DiscoverFetchSuccess({List<Discover>? data}) : super(data: data);
}

@immutable
class DiscoverFetchFailed extends DiscoverState {
  const DiscoverFetchFailed({String? message}) : super(message: message);
}
