import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mdg_flutter_assignment/data/repository/repository.dart';

part 'converter_event.dart';
part 'converter_state.dart';

class ConverterBloc extends Bloc<ConverterEvent, ConvertedValue> {

  ConverterBloc() : super(const ConvertedValue(decimalOutput: '')){
    on<ConverterEvent>(_onConvert);
    }
  }
  FutureOr<void> _onConvert(ConverterEvent event, Emitter<ConvertedValue>emit)async{
    Repository repository = Repository();
    String binaryInput = event.binaryInput;
    String updatedDecimalOutput = await repository.binaryToDecimal(binaryInput);
    emit(ConvertedValue(decimalOutput: updatedDecimalOutput));

  }

