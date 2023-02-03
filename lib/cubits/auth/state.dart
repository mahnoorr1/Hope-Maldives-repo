part of 'cubit.dart';

@immutable
class AuthState extends Equatable {
  final AuthData? data;
  final String? message;

  const AuthState({
    this.data,
    this.message,
  });

  @override
  List<Object?> get props => [
        data,
        message,
      ];
}

// fetch
@immutable
class AuthDefault extends AuthState {}

@immutable
class AuthFetchLoading extends AuthState {
  const AuthFetchLoading() : super();
}

@immutable
class AuthFetchSuccess extends AuthState {
  const AuthFetchSuccess({AuthData? data}) : super(data: data);
}

@immutable
class AuthFetchFailed extends AuthState {
  const AuthFetchFailed({String? message}) : super(message: message);
}

// login
@immutable
class AuthLoginLoading extends AuthState {
  const AuthLoginLoading() : super();
}

@immutable
class AuthLoginSuccess extends AuthState {
  const AuthLoginSuccess({AuthData? data}) : super(data: data);
}

@immutable
class AuthLoginFailed extends AuthState {
  const AuthLoginFailed({String? message}) : super(message: message);
}

// signup
@immutable
class AuthSignUpLoading extends AuthState {
  const AuthSignUpLoading() : super();
}

@immutable
class AuthSignUpSuccess extends AuthState {
  const AuthSignUpSuccess({AuthData? data}) : super(data: data);
}

@immutable
class AuthSignUpFailed extends AuthState {
  const AuthSignUpFailed({String? message}) : super(message: message);
}

// forgot
@immutable
class AuthForgotPasswordLoading extends AuthState {
  const AuthForgotPasswordLoading() : super();
}

@immutable
class AuthForgotPasswordSuccess extends AuthState {
  const AuthForgotPasswordSuccess() : super();
}

@immutable
class AuthForgotPasswordFailed extends AuthState {
  const AuthForgotPasswordFailed({String? message}) : super(message: message);
}

// logout
@immutable
class AuthLogoutLoading extends AuthState {
  const AuthLogoutLoading() : super();
}

@immutable
class AuthLogoutSuccess extends AuthState {
  const AuthLogoutSuccess() : super();
}

@immutable
class AuthLogoutFailed extends AuthState {
  const AuthLogoutFailed({String? message}) : super(message: message);
}

// google signin
@immutable
class GoogleAuthLoading extends AuthState {
  const GoogleAuthLoading() : super();
}

@immutable
class GoogleAuthSuccess extends AuthState {
  const GoogleAuthSuccess({AuthData? data}) : super(data: data);
}

@immutable
class GoogleAuthFailed extends AuthState {
  const GoogleAuthFailed({String? message}) : super(message: message);
}

// facebook signin
@immutable
class FacebookAuthLoading extends AuthState {
  const FacebookAuthLoading() : super();
}

@immutable
class FacebookAuthSuccess extends AuthState {
  const FacebookAuthSuccess({AuthData? data}) : super(data: data);
}

@immutable
class FacebookAuthFailed extends AuthState {
  const FacebookAuthFailed({String? message}) : super(message: message);
}
