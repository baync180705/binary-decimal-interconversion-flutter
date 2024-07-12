import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


abstract class RemoteServices{}

class DecimalToBinary extends RemoteServices{

  Future<String> apiServices(String decimalData)async{
    final dio = Dio();
    await dotenv.load(fileName: ".env");

    String? decimalToBinaryEndpoint = dotenv.env['DECIMAL_TO_BINARY_ENDPOINT'];

    try{
      var response = await dio.post(decimalToBinaryEndpoint??'', data: decimalData);
      return response.toString();
    }catch(error){
      return '0';

    }
  }
}

class BinaryToDecimal extends RemoteServices{

  Future<String> apiServices(String binaryData) async{
    final dio = Dio();
    await dotenv.load(fileName: ".env");

    String? binaryToDecimalEndpoint = dotenv.env['BINARY_TO_DECIMAL_ENDPOINT'];

    await dotenv.load(fileName: ".env");
    try{
      var response = await dio.post(binaryToDecimalEndpoint??'', data: binaryData);
      return response.toString();
    }catch(error){
      return '0';

    }
  }
}