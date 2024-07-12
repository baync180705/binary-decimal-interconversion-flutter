import 'dart:convert';
import 'package:mdg_flutter_assignment/data/remote/remote_api_services.dart';

class Repository {
  dynamic decimalToBinary(String decimal) async {
    DecimalToBinary call = DecimalToBinary();
    String data = jsonEncode({'decimal': decimal});
        var response = await call.apiServices(data);

    return (response);
  }

  dynamic binaryToDecimal(String binary) async {
    BinaryToDecimal call = BinaryToDecimal();
    String data = jsonEncode({'binary': binary});
    var response = await call.apiServices(data);
    return response;
  }
}
