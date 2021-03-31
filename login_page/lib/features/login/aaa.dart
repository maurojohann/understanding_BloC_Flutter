// BlocListener<LoginBloc, LoginState>(
//                     listener: (context, state) {
//                       if (state is LoginCpfValidatedState) {
//                         _cpfIsValid = state.isValidCpf;
//                         print(state.isValidCpf.toString());
//                       }
//                       if (state is LoginPassValidatedState) {
//                         _passwordValid = state.isValidPassword;
//                         print(_passwordValid.toString());
//                       }
//                     },
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                         labelText: 'CPF',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(25),
//                         ),
//                       ),
//                       keyboardType:
//                           TextInputType.numberWithOptions(decimal: true),
//                       onChanged: (value) {
//                         _loginBloc.add(LoginValidatingCpfEvent(cpf: value));
//                       },
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 28),
//                   ),
//                   TextFormField(
//                     decoration: InputDecoration(
//                       labelText: 'Senha',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                     ),
//                     keyboardType:
//                         TextInputType.numberWithOptions(decimal: true),
//                     onChanged: (value) {
//                       _loginBloc
//                           .add(LoginValidatingPassEvent(password: value));
//                     },
//                   ),
//                   Padding(padding: EdgeInsets.only(top: 28)),
//                   BlocBuilder<LoginBloc, LoginState>(
//                     builder: (context, state) {
//                       if (cpfController.text.isEmpty ||
//                           passwordController.text.isEmpty) {
//                         _isButtonValid = false;
//                       } else if (_cpfIsValid == true &&
//                           _passwordValid == true) {
//                         _isButtonValid = true;
//                       }
//                       return ElevatedButton(
//                         child: Text('enter'.toUpperCase()),
//                         onPressed: _isButtonValid != true ? null : () {},
//                       );
//                     },
//                   ),
//                    BlocBuilder<LoginBloc, LoginState>(
//                       builder: (context, state) {
//                         if (cpfController.text.isEmpty ||
//                             passwordController.text.isEmpty) {
//                           _isButtonValid = false;
//                         } else if (_cpfIsValid == true &&
//                             _passwordValid == true) {
//                           _isButtonValid = true;
//                         }
//                         return ElevatedButton(
//                           child: Text('enter'.toUpperCase()),
//                           onPressed: _isButtonValid != true ? null : () {},
//                         );
//                       },
//                     ),

  // yield FormValidatedState(
        //     isUsernameValid: false,
        //     errorType: LoginErrorType.invalid_username,
        //     isUsernameComplete: isUsernameComplete);
        // } else if(validar password){
        //
        // } else if (event.password == null || event.password.isEmpty) {
        //   yield FormValidatedState(
        //       isPasswordValid: false,
        //       isUsernameValid: isUsernameValid,
        //       isUsernameComplete: isUsernameComplete);
        // } else {
        //   yield FormValidatedState(
        //       isUsernameValid: true,
        //       isUsernameComplete: isUsernameComplete,
        //       isPasswordValid: true);

         // if (event is LoginValidatingPassEvent) {
    //   if (event.password == null || event.password.isEmpty) {
    //     passwordIsValid = false;
    //     yield LoginPassValidatedState(
    //         passwordIsValid: passwordIsValid, message: null);
    //   } else if (event.password.length < 3) {
    //     passwordIsValid = false;
    //     yield LoginPassValidatedState(
    //         passwordIsValid: passwordIsValid, message: 'Senha muito curta');
    //   } else {
    //     passwordIsValid = true;
    //     yield LoginPassValidatedState(
    //         passwordIsValid: passwordIsValid, message: null);
    //   }
    // }

    // if (event is DoLogin) {
    //   yield DoinLoginState();
    //   await loginUseCase.call(LoginParams(username));
    //   yield LoginSuccessfulState();
    // }