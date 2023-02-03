import 'dart:async';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hop_maldives/models/hotel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'state.dart';
part 'repository.dart';
part 'data_provider.dart';

class HotelsCubit extends Cubit<HotelsState> {
  static HotelsCubit c(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<HotelsCubit>(context, listen: listen);

  HotelsCubit() : super(const HotelsStateDefault());

  final repo = HotelsRepository();

  Future<void> fetch() async {
    emit(state.copyWith(
      fetch: const HotelsFetchLoading(),
    ));
    try {
      repo.fetch().listen((event) {
        List data = event.data()!['hotels'];

        List<Hotel> hotels = List.generate(
          data.length,
          (i) => Hotel.fromMap(
            data[i],
          ),
        );

        emit(state.copyWith(
          fetch: HotelsFetchSuccess(data: hotels),
        ));
      });
    } catch (e) {
      emit(state.copyWith(
        fetch: HotelsFetchFailed(message: e.toString()),
      ));
    }
  }
}
// end-cubit
