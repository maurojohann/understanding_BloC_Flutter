import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'landing_event.dart';
part 'landing_state.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  LandingBloc() : super(LandingInitialState());

  @override
  Stream<LandingState> mapEventToState(
    LandingEvent event,
  ) async* {

    if(event is InitAppEvent)
    await Future.delayed(Duration(seconds: 2));
    yield LoadedState();
  }
}
