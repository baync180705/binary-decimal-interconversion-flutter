import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mdg_flutter_assignment/presentation/counter/bloc/counter_bloc.dart';

class ToggleButton extends StatelessWidget {
  const ToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ToggleBloc, ToggleState>(
      builder: (context, state) {
        return ToggleButtons(
          constraints: const BoxConstraints(minWidth: 100, minHeight: 30),
          borderRadius: BorderRadius.circular(10),
          borderWidth: 2,
          disabledBorderColor: Colors.deepPurpleAccent,
          onPressed: (index) =>
              {context.read<ToggleBloc>().add(SwitchToggleEvent(index: index))},
          isSelected: state.selected,
          children: const[
            Text('Decimal', style: TextStyle(color: Colors.purple)),
            Text('Binary', style: TextStyle(color: Colors.purple))
          ],
        );
      },
    );
  }
}
