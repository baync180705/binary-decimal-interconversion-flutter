import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mdg_flutter_assignment/presentation/converter/converter.dart';
import 'package:mdg_flutter_assignment/presentation/counter/counter.dart';
import 'package:mdg_flutter_assignment/presentation/navigation/bloc/navigation_bloc.dart';
import 'package:mdg_flutter_assignment/presentation/navigation/bottom_navigation.dart';


class PageLayout extends StatelessWidget {
  const PageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: const Text('Counter App',
                  style: TextStyle(color: Colors.white)),
              backgroundColor: Colors.deepPurpleAccent,
            ),
            body: IndexedStack(
              index: state.selectedIndex,
              children: [
                const CounterPage(),
                ConverterPage(),
              ],
            ),
            bottomNavigationBar: const BottomNavigation(),
          );
      },
    );
  }
}
