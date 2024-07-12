import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mdg_flutter_assignment/presentation/converter/bloc/converter_bloc.dart';
import 'package:mdg_flutter_assignment/presentation/navigation/bloc/navigation_bloc.dart';
import 'package:mdg_flutter_assignment/presentation/counter/bloc/counter_bloc.dart';
import 'package:mdg_flutter_assignment/routes.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationBloc>(create: (context)=> NavigationBloc()),
        BlocProvider<CounterBloc>(create: (context)=> CounterBloc()),
        BlocProvider<ToggleBloc>(create: (context)=> ToggleBloc()),
        BlocProvider<ConverterBloc>(create: (context)=>ConverterBloc())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: routes,
        theme: ThemeData( 
          splashColor: Colors.transparent,
        ),
      ),
    );
  }
}
