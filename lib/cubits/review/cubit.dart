import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hop_maldives/models/diving.dart';
import 'package:hop_maldives/models/excursion.dart';
import 'package:hop_maldives/models/hotel.dart';
import 'package:hop_maldives/models/island.dart';
import 'package:hop_maldives/models/resort.dart';

import 'package:hop_maldives/models/review.dart';
import 'package:hop_maldives/models/tour.dart';

part 'data_provider.dart';
part 'repository.dart';
part 'state.dart';

class ReviewCubit extends Cubit<ReviewState> {
  static ReviewCubit cubit(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<ReviewCubit>(context, listen: listen);

  ReviewCubit() : super(ReviewDefault());

  final repo = ReviewRepository();

  Future<void> send(
    String id,
    Review review, {
    bool? isHotel,
    bool? isResort,
    bool? isIsland,
    bool? isDiving,
    bool? isExcursion,
    bool? isTour,
  }) async {
    emit(const ReviewSendLoading());

    try {
      await repo.send(id, review, isHotel, isResort, isIsland, isDiving, isExcursion, isTour);

      emit(const ReviewSendSuccess());
    } catch (e) {
      emit(ReviewSendFailed(message: e.toString()));
    }
  }
}
