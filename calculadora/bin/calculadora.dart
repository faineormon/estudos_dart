import 'dart:io';

void main() {
  print("Olá, digite um número por favor");

  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";
  String? entrada = "";
  List<String> operacoes = <String>["+", "-", "*", "/"];

  void soma() {
    print(numeroUm + numeroDois);
  }

  void subtracao() {
    print(numeroUm - numeroDois);
  }

  void divisao() {
    print(numeroUm / numeroDois);
  }

  void mutiplicacao() {
    print(numeroUm * numeroDois);
  }

  calcular() {
    switch (operacao) {
      case "+":
        soma();

      case "-":
        subtracao();

      case "*":
        mutiplicacao();

      case "/":
        divisao();

        break;
    }
  }

  void getOperacao() {
    print(
      "Digite qual operação dessas (${operacoes.toString()}) deseja realizar:",
    );

    entrada = stdin.readLineSync();

    if (entrada != null) {
      if (entrada != "") {
        if (operacoes.contains(entrada)) {
          operacao = entrada!;
        } else {
          print("Operação inválida");
          getOperacao();
        }
      }
    }
  }

  entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada!);
    }
  }

  getOperacao();

  print("Digite o segundo valor:");

  entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada!);
    }
  }

  print("O resultado é:");
  calcular();
}

/*
// Variáveis primitivas
  int numeroInteiro = 10;
  double numeroDecimal = 3.14;
  String texto = "Este é um texto.";
  bool isAtivo = true;

  // Variáveis compostas
  List<String> nomes = ["Ana", "João", "Maria"];
  Map<String, String> agenda = {"Ana": "1234-5678", "João": "9876-5432"};
  Set<int> numerosUnicos = {1, 2, 3, 4, 3}; // O número 3 só aparece uma vez

  // Acessando valores
  print("Número inteiro: $numeroInteiro");
  print("Número decimal: $numeroDecimal");
  print("Texto: $texto");
  print("Ativo: $isAtivo");

  print("Primeiro nome da lista: ${nomes[0]}");
  print("Telefone da Ana: ${agenda['Ana']}");
  print("Números únicos no conjunto: $numerosUnicos"); */
