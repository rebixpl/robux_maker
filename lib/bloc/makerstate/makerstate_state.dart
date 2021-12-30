part of 'makerstate_bloc.dart';

abstract class MakerstateState extends Equatable {
  const MakerstateState();
  
  @override
  List<Object> get props => [];
}

class MakerstateInitial extends MakerstateState {}
