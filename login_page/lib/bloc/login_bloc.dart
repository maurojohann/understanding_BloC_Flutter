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
    bool passWordIsValid = false;
    if (event is LoginValidatingCpfEvent) {
      bool cpfIsvalid = CPF.isValid(event.cpf);
      yield LoginCpfValidatedState(isValidCpf: cpfIsvalid);
    } else if (event is LoginValidatingPassEvent) {
      if (event.password == null || event.password.isEmpty) {
        passWordIsValid = false;
        yield LoginPassValidatedState(isValidPassword: passWordIsValid);
      } else {
        passWordIsValid = true;
        yield LoginPassValidatedState(isValidPassword: passWordIsValid);
      }
    }
  }
}
