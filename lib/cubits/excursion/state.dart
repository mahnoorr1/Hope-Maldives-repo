part of 'cubit.dart';

// fetch
@immutable
class ExcursionFetchState extends Equatable {
  static bool match(a, b) => a.fetch != b.fetch;

  final List<Excursion>? data;
  final String? message;

  const ExcursionFetchState({
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
class ExcursionFetchDefault extends ExcursionFetchState {}

@immutable
class ExcursionFetchLoading extends ExcursionFetchState {
  const ExcursionFetchLoading() : super();
}

@immutable
class ExcursionFetchSuccess extends ExcursionFetchState {
  const ExcursionFetchSuccess({List<Excursion>? data}) : super(data: data);
}

@immutable
class ExcursionFetchFailed extends ExcursionFetchState {
  const ExcursionFetchFailed({String? message}) : super(message: message);
}

// root-state
@immutable
class ExcursionState extends Equatable {
  final ExcursionFetchState? fetch;

  const ExcursionState({
    this.fetch,
  });

  @override
  List<Object?> get props => [
        fetch,
      ];

  ExcursionState copyWith({
    ExcursionFetchState? fetch,
  }) {
    return ExcursionState(
      fetch: fetch ?? this.fetch,
    );
  }
}

@immutable
class ExcursionStateDefault extends ExcursionState {
  const ExcursionStateDefault()
      : super(
          fetch: const ExcursionFetchState(),
        );
}
