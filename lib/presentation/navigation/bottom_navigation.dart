import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mdg_flutter_assignment/presentation/navigation/bloc/navigation_bloc.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.code), label: 'Counter'),
            BottomNavigationBarItem(
                icon: Icon(Icons.developer_board), label: 'Converter')
          ],
          currentIndex: state.selectedIndex,
          onTap: (index) => _onTap(context, index),
        );
      },
    );
  }

  void _onTap(BuildContext context, int value) {
    context
        .read<NavigationBloc>()
        .add(ToggleRoutesEvent(pressedIndex: value, context: context));
  }
}
