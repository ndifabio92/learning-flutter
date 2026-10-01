import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubitCubit extends Cubit<CounterCubitState> {
  CounterCubitCubit() : super(CounterCubitInitial());
}
