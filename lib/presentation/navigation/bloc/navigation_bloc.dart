import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationInitial()) {
    on<ToggleRoutesEvent>(_onToggleRoutes);
  }

  FutureOr<void> _onToggleRoutes(ToggleRoutesEvent event, Emitter<NavigationState> emit) {
    emit(NavigationState(selectedIndex: event.pressedIndex));
  }
}
