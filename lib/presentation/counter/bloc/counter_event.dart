part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class CounterIncrementEvent extends CounterEvent{}
class CounterDecrementEvent extends CounterEvent{} 
class SwitchToggleEvent extends CounterEvent{
  final int index;
  const SwitchToggleEvent({required this.index});
}