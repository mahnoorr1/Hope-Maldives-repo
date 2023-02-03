import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:hop_maldives/models/tour.dart';

part 'data_provider.dart';
part 'repository.dart';
part 'state.dart';

class TourCubit extends Cubit<TourState> {
  static TourCubit c(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<TourCubit>(context, listen: listen);

  TourCubit() : super(const TourStateDefault());

  final repo = TourRepository();

  Future<void> fetch() async {
    emit(state.copyWith(
      fetch: const TourFetchLoading(),
    ));
    try {
      final data = await repo.fetch();
      emit(state.copyWith(
        fetch: TourFetchSuccess(data: data),
      ));
    } catch (e) {
      emit(state.copyWith(
        fetch: TourFetchFailed(message: e.toString()),
      ));
    }
  }
}
// end-cubit
