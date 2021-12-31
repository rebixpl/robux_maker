import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'robux_bloc_event.dart';
part 'robux_bloc_state.dart';

class RobuxBlocBloc extends Bloc<RobuxBlocEvent, RobuxBlocState> {
  int _robuxToGenerate = 0;
  int _apiCalls = 0;
  int _robuxGenerated = 0;
  String _username = "";

  RobuxBlocBloc()
      : super(
          const RobuxBlocInitial(
            robuxToGenerate: 0,
            apiCalls: 0,
            robuxGenerated: 0,
            username: "",
          ),
        ) {
    on<SelectRobuxAmount>(_selectRobuxAmount);
    on<GenerateRobux>(_generateRobux);
    on<ChangeUsername>(_changeUsername);
  }

  void _selectRobuxAmount(
      SelectRobuxAmount event, Emitter<RobuxBlocState> emit) {
    _robuxToGenerate = event.robuxToGenerate;

    emit(RobuxBlocInitial(
      apiCalls: _apiCalls,
      robuxGenerated: _robuxGenerated,
      robuxToGenerate: _robuxToGenerate,
      username: _username,
    ));
  }

  void _changeUsername(ChangeUsername event, Emitter<RobuxBlocState> emit) {
    _username = event.username;

    emit(RobuxBlocInitial(
      apiCalls: _apiCalls,
      robuxGenerated: _robuxGenerated,
      robuxToGenerate: _robuxToGenerate,
      username: _username,
    ));
  }

  void _generateRobux(GenerateRobux event, Emitter<RobuxBlocState> emit) {
    _robuxGenerated += _robuxToGenerate;
    _apiCalls += 1;

    emit(RobuxBlocInitial(
      apiCalls: _apiCalls,
      robuxGenerated: _robuxGenerated,
      robuxToGenerate: _robuxToGenerate,
      username: _username,
    ));
  }
}
