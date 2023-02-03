part of 'cubit.dart';

// fetch
@immutable
class HotelsFetchState extends Equatable {
  static bool match(a, b) => a.fetch != b.fetch;

  final List<Hotel>? data;
  final String? message;

  const HotelsFetchState({
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
class HotelsFetchDefault extends HotelsFetchState {}

@immutable
class HotelsFetchLoading extends HotelsFetchState {
  const HotelsFetchLoading() : super();
}

@immutable
class HotelsFetchSuccess extends HotelsFetchState {
  const HotelsFetchSuccess({List<Hotel>? data}) : super(data: data);
}

@immutable
class HotelsFetchFailed extends HotelsFetchState {
  const HotelsFetchFailed({String? message}) : super(message: message);
}


// root-state
@immutable
class HotelsState extends Equatable {
  final HotelsFetchState? fetch;

  const HotelsState({
    this.fetch,
  });

  @override
  List<Object?> get props => [
        fetch,
      ];

  HotelsState copyWith({
    HotelsFetchState? fetch,
  }) {
    return HotelsState(
      fetch: fetch ?? this.fetch,
    );
  }
}

@immutable
class HotelsStateDefault extends HotelsState {
  const HotelsStateDefault()
      : super(
          fetch: const HotelsFetchState(),
        );
}
