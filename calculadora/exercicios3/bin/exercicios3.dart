import 'dart:io';

void main() {
  void validandoIdadeParaDirigir() {
    int idade = 0;

    print("Olá, digite sua idade por favor:");

    String? stringIdade = stdin.readLineSync();

    if (stringIdade != null) {
      if (stringIdade.isNotEmpty) {
        idade = int.parse(stringIdade);
      } else {
        print("Sua idade não pode ser registrada, tente novamente");
      }
    } else {
      print("Sua idade não pode ser nula, tente novamente");
    }

    if (idade < 18) {
      print("Você não tem permissão para dirigir");
    } else {
      print("Você tem permissão para dirigir!");
    }
  }

  void mesesDoAno() {
    String mes = "";

    print("Escolha um mês:");

    String? mesEscolhido = stdin.readLineSync();

    if (mesEscolhido != null && mesEscolhido.isNotEmpty) {
      mes = mesEscolhido;
    } else {
      print("Não foi possível identificar o mês escolhido");
    }

    switch (mes) {
      case "1":
        print("Janeiro");

      case "2":
        print("Fevereiro");

      case "3":
        print("Março");

      case "4":
        print("Abril");

      case "5":
        print("Maio");

      case "6":
        print("Junho");

      case "7":
        print("Julho");

      case "8":
        print("Agosto");

      case "9":
        print("Setembro");

      case "10":
        print("Outubro");

      case "11":
        print("Novembro");

      case "12":
        print("Dezembro");
        break;

      default:
        print('O mês escolhido não é válido');
    }
  }

  void transferenciaPix() {
    double saldo = 1000.0; // Saldo inicial em reais
    double saldoRestante = 0;

    print('Boas-vindas ao seu banco digital!');
    print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

    print('Digite o valor do Pix que deseja realizar:');
    double valorPix = double.parse(stdin.readLineSync()!);

    if (valorPix <= saldo) {
      saldoRestante = saldo - valorPix;
      print(saldoRestante);
    } else {
      print("Saldo insuficiente");
    }
  }

  void permissaoParaDirigirPorPais() {
    int idade = 0;
    String pais = "";

    print("Digite sua idade:");

    String? idadeDigitada = stdin.readLineSync();

    print("Digite o país escolhido para dirigir:");

    String? paisDigitado = stdin.readLineSync();

    if (idadeDigitada != null && idadeDigitada.isNotEmpty) {
      if (paisDigitado != null && paisDigitado.isNotEmpty) {
        idade = int.parse(idadeDigitada);
        pais = paisDigitado;
      } else {
        print("Não foi possível identificar o país digitado.");
      }
    } else {
      print("Não foi possível identificar a idade digitada");
    }

    if ((pais == 'Brasil' && idade >= 18) ||
        (pais == 'EUA' && idade >= 16) ||
        (pais == 'Japao' && idade >= 20)) {
      print('Você pode dirigir um veículo no $pais.');
    } else {
      print('Você não pode dirigir um veículo no $pais.');
    }
  }

  permissaoParaDirigirPorPais();
}
