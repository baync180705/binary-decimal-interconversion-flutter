import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mdg_flutter_assignment/presentation/counter/bloc/counter_bloc.dart';

class DecimalEntry extends StatelessWidget {
  const DecimalEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterInitial>(
      builder: (context, state) {
        return Column(
          children: [
            const Text('The counter value is: ',
                  style: TextStyle(fontSize: 25)),
              Text('${state.counter}', style: const TextStyle(fontSize: 35)),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(CounterIncrementEvent());
                    },
                    elevation: 2,
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(CounterDecrementEvent());
                    },
                    elevation: 2,
                    child: const Icon(Icons.remove),
                  ),
                ],
              ),
          ],
        );
      },
    );
  }
}
