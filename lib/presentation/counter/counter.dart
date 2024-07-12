import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mdg_flutter_assignment/presentation/counter/bloc/counter_bloc.dart';
import 'package:mdg_flutter_assignment/presentation/counter/components/toggle_button.dart';
import 'package:mdg_flutter_assignment/presentation/counter/components/decimal.dart';
import 'package:mdg_flutter_assignment/presentation/counter/components/binary.dart';



class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ToggleBloc, ToggleState>(
      builder: (context, state) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height:MediaQuery.of(context).size.height*0.3,
                child: IndexedStack( 
                  index: state.index,
                  children: [ 
                    const DecimalEntry(),
                    BinaryEntry(),
                  ],
                
                ),
              ),
              const ToggleButton(),
            ],
          ),
        );
      },
    );
  }
}
