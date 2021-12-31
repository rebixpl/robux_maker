part of 'robux_bloc_bloc.dart';

abstract class RobuxBlocEvent extends Equatable {
  const RobuxBlocEvent();

  @override
  List<Object> get props => [];
}

class SelectRobuxAmount extends RobuxBlocEvent {
  final int robuxToGenerate;
  const SelectRobuxAmount({required this.robuxToGenerate});

  @override
  List<Object> get props => [robuxToGenerate];
}

class GenerateRobux extends RobuxBlocEvent {
  const GenerateRobux();

  @override
  List<Object> get props => [];
}

class ChangeUsername extends RobuxBlocEvent {
  final String username;
  const ChangeUsername({required this.username});

  @override
  List<Object> get props => [username];
}
