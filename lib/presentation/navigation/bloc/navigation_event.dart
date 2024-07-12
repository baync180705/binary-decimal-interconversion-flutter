part of 'navigation_bloc.dart';

abstract class NavigationEvent extends Equatable {
  const NavigationEvent();

  @override
  List<Object> get props => [];
}

class ToggleRoutesEvent extends NavigationEvent{
  final int pressedIndex;
  final BuildContext context;
  const ToggleRoutesEvent({required this.pressedIndex, required this.context});
}