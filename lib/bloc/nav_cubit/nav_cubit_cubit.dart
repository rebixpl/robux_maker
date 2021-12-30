import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'nav_cubit_state.dart';

class NavCubitCubit extends Cubit<NavCubitState> {
  NavCubitCubit() : super(NavCubitInitial());
}
