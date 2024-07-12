part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {

  const CounterState();
  
  @override
  List<Object> get props => [];
}

final class CounterInitial extends CounterState {
  final int counter;
  final String? binary;
  const CounterInitial({required this.counter, required this.binary}) ;

  @override 
  List<Object> get props => [counter];
}

final class ToggleState extends CounterState{
  final List<bool> selected;
  final int index;
  const ToggleState({required this.index, required this.selected});

  @override 
  List<Object> get props => [index, selected];
}
