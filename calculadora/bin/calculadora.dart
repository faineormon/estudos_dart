import 'dart:io';

void main() {
  print("Olá, digite um número por favor");

  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";

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

  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada);
    }
  }

  print("Digite qual operação deseja realizar:");

  entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      operacao = entrada;
    }
  }

  print("Digite o segundo valor:");

  entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada);
    }
  }

  print("O resultado é:");
  calcular();

  void dobro() {
    double numeroDobro = numeroUm * 2;

    print("O dobro de $numeroUm é $numeroDobro");
  }

  void idadeMedia() {
    double idades = (numeroUm + numeroDois) / 2;

    print("A média das idades é $idades");
  }

  void ficha() {
    String nome = "Faine";
    String cpf = "123456789";
    int idade = 40;
    double altura = 1.6;
    bool participante = true;

    print(
      "Eu sou $nome, \n"
      "meu CPF é $cpf, \n"
      "sou mebro da comunidade? $participante. \n"
      "Eu tenho $altura de altura e \n"
      "$idade anos de idade.",
    );
  }

  void salario() {
    print("Digite o número de horas trabalhadas:");

    double horasTrabalhadas = double.parse(stdin.readLineSync()!);
    double taxaPorHora = 50.0;
    double calculo = horasTrabalhadas * taxaPorHora;
    double valorFinal = calculo - (calculo * 0.05);

    print("O salário líquido é de R\$ $valorFinal");
  }

  void banco() {
    double saldo = 1000.0; // Saldo inicial em reais

    print('Boas-vindas ao seu banco digital!');
    print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

    print('Digite o valor do Pix que deseja realizar:');
    double valorPix = double.parse(stdin.readLineSync()!);

    saldo -= valorPix;

    print('Pix realizado com sucesso!');
    print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');
  }

  subtracaoPontos(double pontosIniciais, double pontosRetirados) {
    double pontosRestantes = pontosIniciais - pontosRetirados;

    return pontosRestantes;
  }

  pontosBeneficio() {
    double pontosIniciais = 100;
    double pontosRetirados;

    print("Você tem $pontosIniciais pontos.");
    print("Quantos pontos você gostaria de resgatar?");

    pontosRetirados = double.parse(stdin.readLineSync()!);

    double pontosRestantes = subtracaoPontos(pontosIniciais, pontosRetirados);
    print(
      "Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes.",
    );
  }

  cupons() {
    print("Digite o valor da compra:");

    double valorCompra = double.parse(stdin.readLineSync()!);

    int quantidadeCupons = (valorCompra / 50).floor();

    print("Você tem direito a $quantidadeCupons");
  }
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
