import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'makerstate_event.dart';
part 'makerstate_state.dart';

class MakerstateBloc extends Bloc<MakerstateEvent, MakerstateState> {
  MakerstateBloc() : super(MakerstateInitial()) {
    on<MakerstateEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
