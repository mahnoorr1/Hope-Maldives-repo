part of 'cubit.dart';

@immutable
class ResortsFetchState extends Equatable {
  static bool match(a, b) => a.fetch != b.fetch;

  final List<Resort>? data;
  final String? message;

  const ResortsFetchState({
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
class ResortsFetchDefault extends ResortsFetchState {}

@immutable
class ResortsFetchLoading extends ResortsFetchState {
  const ResortsFetchLoading() : super();
}

@immutable
class ResortsFetchSuccess extends ResortsFetchState {
  const ResortsFetchSuccess({List<Resort>? data}) : super(data: data);
}

@immutable
class ResortsFetchFailed extends ResortsFetchState {
  const ResortsFetchFailed({String? message}) : super(message: message);
}

// root-state
@immutable
class ResortsState extends Equatable {
  final ResortsFetchState? fetch;

  const ResortsState({
    this.fetch,
  });

  @override
  List<Object?> get props => [
        fetch,
      ];

  ResortsState copyWith({
    ResortsFetchState? fetch,
  }) {
    return ResortsState(
      fetch: fetch ?? this.fetch,
    );
  }
}

@immutable
class ResortsStateDefault extends ResortsState {
  const ResortsStateDefault()
      : super(
          fetch: const ResortsFetchState(),
        );
}
