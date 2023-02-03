import 'dart:async';

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hop_maldives/models/resort.dart';

part 'state.dart';
part 'repository.dart';
part 'data_provider.dart';

class ResortsCubit extends Cubit<ResortsState> {
  static ResortsCubit c(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<ResortsCubit>(context, listen: listen);

  ResortsCubit() : super(const ResortsStateDefault());

  final repo = ResortsRepository();

  Future<void> fetch() async {
    emit(state.copyWith(
      fetch: const ResortsFetchLoading(),
    ));
    try {
      repo.fetch().listen((event) {
        List data = event.data()!['resorts'];

        List<Resort> resorts = List.generate(
          data.length,
          (i) => Resort.fromMap(
            data[i],
          ),
        );

        emit(state.copyWith(
          fetch: ResortsFetchSuccess(data: resorts),
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        fetch: ResortsFetchFailed(message: e.toString()),
      ));
    }
  }
}
// end-cubit
