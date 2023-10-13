import 'dart:async';
import 'package:bard_bloc_/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    // on<IncrementEvent>((event, emit) => emit(UpdatedState(state.count + 1)));//easy methode not good for complex
    on<IncrementEvent>(_increment);//create a _increment methode

    on<DecrementEvent>((event, emit) => emit(UpdatedState(state.count - 1)));
  }

  FutureOr<void> _increment(IncrementEvent event, Emitter<CounterState> emit) {
    emit(UpdatedState(state.count + 1));
  }
}
