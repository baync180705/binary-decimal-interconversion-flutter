part of 'converter_bloc.dart';

abstract class ConverterState extends Equatable {
  const ConverterState();
  
  @override
  List<Object> get props => [];
}

final class ConvertedValue extends ConverterState {
  final String decimalOutput;
  const ConvertedValue({required this.decimalOutput});

  @override 
  List<Object> get props => [decimalOutput];
}
