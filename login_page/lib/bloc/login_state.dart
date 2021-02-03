part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitialState extends LoginState {}

class LoginCpfNotValidState extends LoginState {
  final String message;

  LoginCpfNotValidState({this.message});
}

class LoginCpfValidatedState extends LoginState {
  final bool cpfIsValid;
  final String message;

  LoginCpfValidatedState({
    this.cpfIsValid,
    this.message,
  });

  List<Object> get props => [];
}

class LoginPassValidatedState extends LoginState {
  final bool passwordIsValid;

  LoginPassValidatedState({
    this.passwordIsValid,
  });

  List<Object> get props => [];
}
