import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hop_maldives/models/diving.dart';

part 'state.dart';
part 'repository.dart';
part 'data_provider.dart';

class DivingCubit extends Cubit<DivingState> {
  static DivingCubit c(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<DivingCubit>(context, listen: listen);

  DivingCubit() : super(const DivingStateDefault());

  final repo = DivingRepository();

  Future<void> fetch() async {
    emit(state.copyWith(
      fetch: const DivingFetchLoading(),
    ));
    try {
      repo.fetch().listen((event) {
        List data = event.data()!['divings'];

        List<Diving> divings = List.generate(
          data.length,
          (i) => Diving.fromMap(
            data[i],
          ),
        );
        emit(state.copyWith(
          fetch: DivingFetchSuccess(data: divings),
        ));
      }, onDone: () {
        emit(state.copyWith(
          fetch: DivingFetchSuccess(data: state.fetch!.data),
        ));
      }, onError: (e, s) {
        emit(state.copyWith(
          fetch: DivingFetchFailed(message: e.toString()),
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        fetch: DivingFetchFailed(message: e.toString()),
      ));
    }
  }
}
// end-cubit
