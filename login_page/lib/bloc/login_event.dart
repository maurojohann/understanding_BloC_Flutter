part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginValidatingCpfEvent extends LoginEvent {
  final String cpf;

  LoginValidatingCpfEvent({
    this.cpf,
  });
}

class LoginValidatingPassEvent extends LoginEvent {
  final String password;

  LoginValidatingPassEvent({
    this.password,
  });
}
