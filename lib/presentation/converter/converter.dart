import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mdg_flutter_assignment/presentation/converter/bloc/converter_bloc.dart';

class ConverterPage extends StatelessWidget {
  ConverterPage({super.key});
  final TextEditingController binaryController = TextEditingController();
  final TextEditingController decimalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Completer completer = Completer();
    return BlocListener<ConverterBloc, ConvertedValue>(
      listener: (context, state) {
        decimalController.text = state.decimalOutput;
        completer.complete();
      },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enter Binary for decimal conversion:',
                      style: TextStyle(color: Colors.grey[500])),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.deepPurpleAccent)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: binaryController,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'^[0,1]+$'))
                          ],
                        ),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Check your decimal output:',
                      style: TextStyle(color: Colors.grey[500])),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.deepPurpleAccent)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: decimalController,
                          readOnly: true,
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: ()async{
              completer = Completer();
              context.read<ConverterBloc>().add(ConverterEvent(binaryInput: binaryController.text));
              await completer.future;
            }, child: const Text('Convert'))
          ],
        ));
      }
  }



