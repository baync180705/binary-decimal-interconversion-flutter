import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mdg_flutter_assignment/data/repository/repository.dart';
import 'package:mdg_flutter_assignment/presentation/counter/bloc/counter_bloc.dart';

class BinaryEntry extends StatelessWidget {
  BinaryEntry({super.key});
  final Repository repository = Repository();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterInitial>(
      builder: (context, state)  {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('The binary value is: ',
                    style: TextStyle(fontSize: 25)),
                Text('${state.binary}', style: const TextStyle(fontSize: 35)),
              ]),
        );
      },
    );
  }
}
