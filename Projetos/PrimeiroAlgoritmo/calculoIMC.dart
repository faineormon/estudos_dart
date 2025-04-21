import 'dart:io';

main() {
  var peso = null;
  var altura = null;

  print('Digite o seu peso:');

  peso = stdin.readLineSync();
  peso = int.parse(peso);

  print('Digite sua altura');

  altura = stdin.readLineSync();
  altura = double.parse(altura);

  var imc = calculoImc(peso, altura);

  if (imc < 18.5) {
    print('Abaixo do peso');
  } else if (imc >= 18.5 && imc < 25) {
    print('Peso normal');
  } else if (imc >= 25 && imc < 30) {
    print('Sobrepeso');
  } else if (imc >= 30 && imc < 35) {
    print('Obesidade grau 1');
  } else if (imc >= 35 && imc < 40) {
    print('Obesidade grau 2');
  } else {
    print('Obesidade grau 3');
  }
}

calculoImc(int peso, double altura) {
  var result = peso / (altura * altura);

  return result;
}
