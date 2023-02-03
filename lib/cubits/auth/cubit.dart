import 'dart:async';

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:hop_maldives/models/auth/auth_data.dart';

part 'data_provider.dart';
part 'state.dart';

class AuthCubit extends Cubit<AuthState> {
  static AuthCubit cubit(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<AuthCubit>(context, listen: listen);

  AuthCubit() : super(AuthDefault());

  Future<void> fetch() async {
    emit(const AuthFetchLoading());
    try {
      final data = await AuthDataProvider.fetch();

      emit(AuthFetchSuccess(data: data));
    } catch (e) {
      emit(AuthFetchFailed(message: e.toString()));
    }
  }

  Future<void> login(String email, String password) async {
    emit(const AuthLoginLoading());
    try {
      final data = await AuthDataProvider.login(email, password);

      emit(AuthLoginSuccess(data: data));
    } catch (e) {
      emit(AuthLoginFailed(message: e.toString()));
    }
  }

  Future<void> googleAuth() async {
    emit(const GoogleAuthLoading());
    try {
      final data = await AuthDataProvider.googleSignIn();

      if (data == null) {
        emit(const GoogleAuthFailed(message: 'Login cancelled!'));
      } else {
        emit(GoogleAuthSuccess(data: data));
      }
    } catch (e) {
      emit(GoogleAuthFailed(message: e.toString()));
    }
  }

  Future<void> facebookAuth() async {
    emit(const FacebookAuthLoading());
    try {
      final data = await AuthDataProvider.facebookSignIn();

      if (data == null) {
        emit(const FacebookAuthFailed(message: 'Login cancelled!'));
      } else {
        emit(FacebookAuthSuccess(data: data));
      }
    } catch (e) {
      emit(FacebookAuthFailed(message: e.toString()));
    }
  }

  Future<void> signup(String fullName, String email, String password) async {
    emit(const AuthSignUpLoading());
    try {
      final data = await AuthDataProvider.signUp(fullName, email, password);

      emit(AuthSignUpSuccess(data: data));
    } catch (e) {
      emit(AuthSignUpFailed(message: e.toString()));
    }
  }

  Future<void> forgotPassword(String email) async {
    emit(const AuthForgotPasswordLoading());
    try {
      await AuthDataProvider.forgotPassword(email);

      emit(const AuthForgotPasswordSuccess());
    } catch (e) {
      emit(AuthForgotPasswordFailed(message: e.toString()));
    }
  }

  Future<void> logout() async {
    emit(const AuthLogoutSuccess());
    try {
      await AuthDataProvider.logout();

      emit(const AuthLogoutSuccess());
    } catch (e) {
      emit(AuthLogoutFailed(message: e.toString()));
    }
  }
}
