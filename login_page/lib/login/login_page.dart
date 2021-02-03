import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_page/bloc/login_bloc.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginBloc _loginBloc;

  @override
  void dispose() {
    _loginBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _loginBloc = BlocProvider.of<LoginBloc>(context);
    bool _cpfIsValid = false;
    bool _passwordValid = false;
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
              child: Form(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  padding:
                      EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
                  // height: 280,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: BlocListener<LoginBloc, LoginState>(
                    listener: (context, state) {
                      if (state is LoginCpfValidatedState) {
                        _cpfIsValid = state.isValidCpf;
                        print(state.isValidCpf.toString());
                      }
                      if (state is LoginPassValidatedState) {
                        _passwordValid = state.isValidPassword;
                        print(_passwordValid.toString());
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'login',
                          style: TextStyle(color: primaryColor),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 28),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'CPF',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          onChanged: (value) {
                            _loginBloc.add(LoginValidatingCpfEvent(cpf: value));
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 28),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          onChanged: (value) {
                            _loginBloc
                                .add(LoginValidatingPassEvent(password: value));
                          },
                        ),
                        Padding(padding: EdgeInsets.only(top: 28)),
                        BlocBuilder<LoginBloc, LoginState>(
                          builder: (context, state) {
                            return ElevatedButton(
                              child: Text('enter'.toUpperCase()),
                              onPressed:
                                  _cpfIsValid == true && _passwordValid == true
                                      ? () {}
                                      : null,
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
