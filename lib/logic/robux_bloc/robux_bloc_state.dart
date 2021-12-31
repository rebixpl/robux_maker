part of 'robux_bloc_bloc.dart';

abstract class RobuxBlocState extends Equatable {
  final int robuxToGenerate;
  final int robuxGenerated;
  final int apiCalls;
  final String username;

  const RobuxBlocState(
    this.robuxToGenerate,
    this.robuxGenerated,
    this.apiCalls,
    this.username,
  );

  @override
  List<Object> get props => [
        robuxToGenerate,
        robuxGenerated,
        apiCalls,
        username,
      ];
}

class RobuxBlocInitial extends RobuxBlocState {
  const RobuxBlocInitial({
    required int robuxToGenerate,
    required int robuxGenerated,
    required int apiCalls,
    required String username,
  }) : super(robuxToGenerate, robuxGenerated, apiCalls, username);

  @override
  String toString() =>
      "RobuxBlocInitial { robuxToGenerate: $robuxToGenerate robuxGenerated: $robuxGenerated apiCalls: $apiCalls username: $username}";
}
