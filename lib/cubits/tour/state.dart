part of 'cubit.dart';

@immutable
class TourFetchState extends Equatable {
  static bool match(a, b) => a.fetch != b.fetch;

  final List<Tour>? data;
  final String? message;

  const TourFetchState({
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
class TourFetchDefault extends TourFetchState {}

@immutable
class TourFetchLoading extends TourFetchState {
  const TourFetchLoading() : super();
}

@immutable
class TourFetchSuccess extends TourFetchState {
  const TourFetchSuccess({List<Tour>? data}) : super(data: data);
}

@immutable
class TourFetchFailed extends TourFetchState {
  const TourFetchFailed({String? message}) : super(message: message);
}

// root-state
@immutable
class TourState extends Equatable {
  final TourFetchState? fetch;

  const TourState({
    this.fetch,
  });

  @override
  List<Object?> get props => [
        fetch,
      ];

  TourState copyWith({
    TourFetchState? fetch,
  }) {
    return TourState(
      fetch: fetch ?? this.fetch,
    );
  }
}

@immutable
class TourStateDefault extends TourState {
  const TourStateDefault()
      : super(
          fetch: const TourFetchState(),
        );
}
