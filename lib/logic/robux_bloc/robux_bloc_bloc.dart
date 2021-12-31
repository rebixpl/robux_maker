import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'robux_bloc_event.dart';
part 'robux_bloc_state.dart';

class RobuxBlocBloc extends Bloc<RobuxBlocEvent, RobuxBlocState> {
  RobuxBlocBloc() : super(RobuxBlocInitial()) {
    on<RobuxBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
