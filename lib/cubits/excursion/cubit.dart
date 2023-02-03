import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hop_maldives/models/excursion.dart';

part 'state.dart';
part 'repository.dart';
part 'data_provider.dart';

class ExcursionCubit extends Cubit<ExcursionState> {
  static ExcursionCubit c(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<ExcursionCubit>(context, listen: listen);

  ExcursionCubit() : super(const ExcursionStateDefault());

  final repo = ExcursionRepository();

  Future<void> fetch() async {
    emit(state.copyWith(
      fetch: const ExcursionFetchLoading(),
    ));
    try {
      repo.fetch().listen((event) {
        List data = event.data()!['excursions'];

        List<Excursion> exc = List.generate(
          data.length,
          (i) => Excursion.fromMap(
            data[i],
          ),
        );
        emit(state.copyWith(
          fetch: ExcursionFetchSuccess(data: exc),
        ));
      }, onDone: () {
        emit(state.copyWith(
          fetch: ExcursionFetchSuccess(data: state.fetch!.data),
        ));
      }, onError: (e, s) {
        emit(state.copyWith(
          fetch: ExcursionFetchFailed(message: e.toString()),
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        fetch: ExcursionFetchFailed(message: e.toString()),
      ));
    }
  }
}
// end-cubit
