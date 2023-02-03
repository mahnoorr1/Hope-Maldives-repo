part of 'cubit.dart';

class ReviewRepository {
  Future<void> send(
    String id,
    Review review, [
    bool? isHotel,
    bool? isResort,
    bool? isIsland,
    bool? isDiving,
    bool? isExcursion,
    bool? isTour,
  ]) =>
      ReviewDataProvider.send(
        id,
        review,
        isHotel,
        isResort,
        isIsland,
        isDiving,
        isExcursion,
        isTour,
      );
}
