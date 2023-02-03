part of 'cubit.dart';

// fetch
@immutable
class IslandsFetchState extends Equatable {
  static bool match(a, b) => a.fetch != b.fetch;

  final List<Island>? data;
  final String? message;

  const IslandsFetchState({
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
class IslandsFetchDefault extends IslandsFetchState {}

@immutable
class IslandsFetchLoading extends IslandsFetchState {
  const IslandsFetchLoading() : super();
}

@immutable
class IslandsFetchSuccess extends IslandsFetchState {
  const IslandsFetchSuccess({List<Island>? data}) : super(data: data);
}

@immutable
class IslandsFetchFailed extends IslandsFetchState {
  const IslandsFetchFailed({String? message}) : super(message: message);
}

// root-state
@immutable
class IslandsState extends Equatable {
  final IslandsFetchState? fetch;

  const IslandsState({
    this.fetch,
  });

  @override
  List<Object?> get props => [
        fetch,
      ];

  IslandsState copyWith({
    IslandsFetchState? fetch,
  }) {
    return IslandsState(
      fetch: fetch ?? this.fetch,
    );
  }
}

@immutable
class IslandsStateDefault extends IslandsState {
  const IslandsStateDefault()
      : super(
          fetch: const IslandsFetchState(),
        );
}
