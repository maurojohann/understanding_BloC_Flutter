part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitialState extends LoginState {}

class LoginValidatingState extends LoginState {}

class LoginCpfValidatedState extends LoginState {
  final bool isValidCpf;

  LoginCpfValidatedState({
    this.isValidCpf,
  });

  List<Object> get props => [];
}

class LoginPassValidatedState extends LoginState {
  final bool isValidPassword;

  LoginPassValidatedState({
    this.isValidPassword,
  });

  List<Object> get props => [];
}
