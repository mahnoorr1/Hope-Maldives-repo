import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:hop_maldives/models/discover.dart';

part 'data_provider.dart';
part 'repository.dart';
part 'state.dart';

class DiscoverCubit extends Cubit<DiscoverState> {
  static DiscoverCubit cubit(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<DiscoverCubit>(context, listen: listen);

  DiscoverCubit() : super(DiscoverDefault());

  final repo = DiscoverRepository();

  Future<void> fetch() async {
    emit(const DiscoverFetchLoading());
    try {
      repo.fetch().listen((event) {
        List data = event.data()!['images'];

        List<Discover> discover = List.generate(
          data.length,
          (i) => Discover.fromMap(
            data[i],
          ),
        );
        emit(DiscoverFetchSuccess(data: discover));
      });
    } catch (e) {
      emit(DiscoverFetchFailed(message: e.toString()));
    }
  }
}
