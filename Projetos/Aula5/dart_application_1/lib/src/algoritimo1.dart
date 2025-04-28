import 'dart:io';

dynamic calculoIdade() {
  print('Digite uma idade para saber se é maior ou menor responsável:');

  var input;
  input = stdin.readLineSync();
  var idade = int.parse(input);

  if (idade >= 18) {
    print('Maior de idade');
  } else {
    print('Menor de idade');
  }
}
