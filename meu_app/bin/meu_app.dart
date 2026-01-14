import 'dart:io';

void main() {
  print("Olá Mundo!");

  print("Me chamo Dart. Qual o seu nome?");
  String? entrada = stdin.readLineSync();
  print("Muito prazer, $entrada. Vamos fazer vários programas juntos!");

  print("Qual a sua idade?");
  var idade = stdin.readLineSync();
  print("Então seu nome é $entrada e você tem $idade ano!");
}
