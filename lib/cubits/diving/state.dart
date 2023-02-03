part of 'cubit.dart';

// fetch
@immutable
class DivingFetchState extends Equatable {
  static bool match(a, b) => a.fetch != b.fetch;

  final List<Diving>? data;
  final String? message;

  const DivingFetchState({
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
class DivingFetchDefault extends DivingFetchState {}

@immutable
class DivingFetchLoading extends DivingFetchState {
  const DivingFetchLoading() : super();
}

@immutable
class DivingFetchSuccess extends DivingFetchState {
  const DivingFetchSuccess({List<Diving>? data}) : super(data: data);
}

@immutable
class DivingFetchFailed extends DivingFetchState {
  const DivingFetchFailed({String? message}) : super(message: message);
}

// root-state
@immutable
class DivingState extends Equatable {
  final DivingFetchState? fetch;

  const DivingState({
    this.fetch,
  });

  @override
  List<Object?> get props => [
        fetch,
      ];

  DivingState copyWith({
    DivingFetchState? fetch,
  }) {
    return DivingState(
      fetch: fetch ?? this.fetch,
    );
  }
}

@immutable
class DivingStateDefault extends DivingState {
  const DivingStateDefault()
      : super(
          fetch: const DivingFetchState(),
        );
}
