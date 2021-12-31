part of 'robux_bloc_bloc.dart';

abstract class RobuxBlocState extends Equatable {
  const RobuxBlocState();
  
  @override
  List<Object> get props => [];
}

class RobuxBlocInitial extends RobuxBlocState {}
