import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:hop_maldives/models/request.dart';

part 'state.dart';
part 'repository.dart';
part 'data_provider.dart';

class RequestCubit extends Cubit<RequestState> {
  static RequestCubit c(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<RequestCubit>(context, listen: listen);

  RequestCubit() : super(const RequestStateDefault());

  final repo = RequestRepository();

  Future<void> fetch() async {
    emit(state.copyWith(
      fetch: const RequestFetchLoading(),
    ));
    try {
      repo.fetch().listen(
        (event) {
          final raw = event.data() ?? {'requests': []};
          List data = raw['requests'] ?? [];

          List<Request> requests = List.generate(
            data.length,
            (i) => Request.fromMap(
              data[i],
            ),
          );

          emit(state.copyWith(
            fetch: RequestFetchSuccess(data: requests),
          ));
        },
        onDone: () {
          emit(state.copyWith(
            fetch: RequestFetchSuccess(data: state.fetch!.data),
          ));
        },
        onError: (err, stk) {
          emit(state.copyWith(
            fetch: RequestFetchFailed(message: err.toString()),
          ));
        },
      );
    } catch (e) {
      emit(state.copyWith(
        fetch: RequestFetchFailed(message: e.toString()),
      ));
    }
  }

  Future<void> sendRequest(Request request) async {
    emit(state.copyWith(
      send: const RequestSendLoading(),
    ));
    try {
      await repo.sendRequest(request);
      emit(state.copyWith(
        send: const RequestSendSuccess(),
      ));
    } catch (e) {
      emit(state.copyWith(
        send: RequestSendFailed(message: e.toString()),
      ));
    }
  }

  Future<void> delete(int index) async {
    emit(state.copyWith(
      delete: const RequestDeleteLoading(),
    ));
    try {
      await repo.delete(index);
      emit(state.copyWith(
        delete: const RequestDeleteSuccess(),
      ));
    } catch (e) {
      emit(state.copyWith(
        delete: RequestDeleteFailed(message: e.toString()),
      ));
    }
  }
}
// end-cubit
