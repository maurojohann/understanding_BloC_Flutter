import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cpfcnpj/cpfcnpj.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    bool passwordIsValid = false;
    bool cpfIsvalid = false;
    if (event is LoginValidatingCpfEvent) {
      if (event.cpf == null || event.cpf.isEmpty) {
        yield LoginCpfNotValidState(message: null);
      } else if (event.cpf.trim().length < 11) {
        yield LoginCpfNotValidState(message: 'Cpf Incompleto');
      } else if (event.cpf.length == 11) {
        cpfIsvalid = CPF.isValid(event.cpf);
        yield LoginCpfValidatedState(cpfIsValid: cpfIsvalid);
        if (cpfIsvalid != false) {
          yield LoginCpfNotValidState(message: null);
        } else {
          yield LoginCpfNotValidState(message: 'CPF Invalido');
        }
      }
    }

    if (event is LoginValidatingPassEvent) {
      if (event.password == null ||
          event.password.isEmpty ||
          event.password.length < 3) {
        passwordIsValid = false;
        yield LoginPassValidatedState(passwordIsValid: passwordIsValid);
      } else {
        passwordIsValid = true;
        yield LoginPassValidatedState(passwordIsValid: passwordIsValid);
      }
    }
  }
}
