import 'dart:async';

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hop_maldives/models/island.dart';

part 'state.dart';
part 'repository.dart';
part 'data_provider.dart';

class IslandsCubit extends Cubit<IslandsState> {
  static IslandsCubit c(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<IslandsCubit>(context, listen: listen);

  IslandsCubit() : super(const IslandsStateDefault());

  final repo = IslandsRepository();

  Future<void> fetch() async {
    emit(state.copyWith(
      fetch: const IslandsFetchLoading(),
    ));
    try {
      repo.fetch().listen((event) {
        List data = event.data()!['islands'];

        List<Island> islands = List.generate(
          data.length,
          (i) => Island.fromMap(
            data[i],
          ),
        );

        emit(state.copyWith(
          fetch: IslandsFetchSuccess(data: islands),
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        fetch: IslandsFetchFailed(message: e.toString()),
      ));
    }
  }
}
// end-cubit
