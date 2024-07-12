import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mdg_flutter_assignment/data/repository/repository.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterInitial> {
  CounterBloc() : super(const CounterInitial(counter: 0, binary: '0')) {
    on<CounterIncrementEvent>(_onIncrement);
    on<CounterDecrementEvent>(_onDecrement);
  }

  FutureOr<void> _onIncrement(CounterEvent event, Emitter<CounterInitial> emit)async {
    Repository repository = Repository();
    int updatedCounter = state.counter + 1;
    String binary = await repository.decimalToBinary(updatedCounter.toString());
    emit(CounterInitial(counter: updatedCounter, binary: binary));
  }

  FutureOr<void> _onDecrement(CounterDecrementEvent event, Emitter<CounterInitial> emit) async{
    Repository repository = Repository();
    int updatedCounter = state.counter - 1;
    String binary = await repository.decimalToBinary(updatedCounter.toString());
    (state.counter == 0) ? emit(CounterInitial(counter: state.counter, binary: '0')) : emit(CounterInitial(counter: updatedCounter, binary: binary));
  }

}

class ToggleBloc extends Bloc<CounterEvent,ToggleState>{
  ToggleBloc():super(const ToggleState(index: 0, selected:[true,false])){
    on<SwitchToggleEvent>(_onToggle);
  }


  FutureOr<void> _onToggle(SwitchToggleEvent event, Emitter<ToggleState> emit) {
    List<bool> selected = [(event.index==0),(event.index==1)];
    emit(ToggleState(index: event.index, selected: selected));
  }
}
