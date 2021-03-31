import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_page/features/landing/bloc/landing_bloc.dart';
import 'package:login_page/features/login/presentation/bloc/login_bloc.dart';
import 'package:login_page/features/login/presentation/pages/login_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  LandingBloc _bloc = LandingBloc();

  @override
  void initState() {
    _bloc.add(InitAppEvent());
    super.initState();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: BlocListener<LandingBloc, LandingState>(
        listener: (context, state) {
          if (state is LoadedState) {
            return Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage()));
          }
        },
        child: _buildScreen(),
      ),
    );
  }

  Widget _buildScreen() {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [CircularProgressIndicator(), Text("Aguarde")],
      )),
    );
  }
}
