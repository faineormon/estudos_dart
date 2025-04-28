//import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

import 'package:dart_application_1/src/algoritimo1.dart';
import 'package:dart_application_1/src/carrinhoCompras.dart';
import 'package:dart_application_1/src/calculoIMC.dart';
import 'package:dart_application_1/src/maps.dart';

void main(List<String> arguments) {
  //print('Hello world: ${dart_application_1.calculate()}!');

  if (arguments[0] == 'calculo-idade') {
    calculoIdade();
  } else if (arguments[0] == 'carrinho') {
    carrinhoCompras();
  } else if (arguments[0] == 'calculo-imc') {
    imc();
  } else if (arguments[0] == 'cadastro') {
    cadastro();
  } else {
    print('Comando não existe');
  }
}
