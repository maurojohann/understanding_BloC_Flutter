part of 'landing_bloc.dart';

abstract class LandingState extends Equatable {
  const LandingState();
  
  @override
  List<Object> get props => [];
}

class LandingInitialState extends LandingState {}

class LoadedState extends LandingState {}
