import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/login_bloc.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginBloc _loginBloc = LoginBloc();
  bool _cpfIsValid = false;
  bool _passwordValid = false;
  String _errorMessage;
  String _eroumessage;

  @override
  void dispose() {
    _loginBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color secundaryColor = Color.fromARGB(255, 26, 41, 72);
    final Color primaryColor = Color.fromARGB(255, 241, 112, 33);
    return Scaffold(
      backgroundColor: secundaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
            ),
            SizedBox(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
                // height: 280,
                width: MediaQuery.of(context).size.width / 1.1,
                child: BlocProvider(
                  create: (context) => _loginBloc,
                  child: BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      if (state is LoginCpfValidatedState) {
                        _cpfIsValid = state.cpfIsValid;
                        _errorMessage = state.message;
                        print(state.cpfIsValid.toString());
                      }

                      if (state is LoginPassValidatedState) {
                        _passwordValid = state.passwordIsValid;
                        _eroumessage = state.message;
                        print(_passwordValid.toString());
                      }

                      return _buildColumn(primaryColor);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildColumn(Color primaryColor) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'login',
          style: TextStyle(color: primaryColor),
        ),
        Padding(padding: EdgeInsets.only(top: 28)),
        _buildTextFormFieldCpf(),
        Padding(padding: EdgeInsets.only(top: 28)),
        _buildTextFormFieldPassword(),
        Padding(padding: EdgeInsets.only(top: 28)),
        ElevatedButton(
          child: Text('enter'.toUpperCase()),
          onPressed:
              _cpfIsValid == true && _passwordValid == true ? () {} : null,
        ),
      ],
    );
  }

  TextFormField _buildTextFormFieldPassword() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Senha',
        errorText: _eroumessage,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      onChanged: (value) {
        _loginBloc.add(LoginValidatingPassEvent(password: value));
      },
    );
  }

  TextFormField _buildTextFormFieldCpf() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'PF',
        errorText: _errorMessage,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      onChanged: (value) {
        _loginBloc.add(LoginValidatingCpfEvent(cpf: value));
      },
    );
  }
}
