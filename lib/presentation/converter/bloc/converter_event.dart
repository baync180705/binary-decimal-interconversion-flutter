part of 'converter_bloc.dart';

class ConverterEvent extends Equatable {
  final String binaryInput;
  const ConverterEvent({required this.binaryInput});

  @override
  List<Object> get props => [binaryInput];
}
