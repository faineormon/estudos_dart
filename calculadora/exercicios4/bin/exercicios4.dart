import 'dart:io';

void main(List<String> arguments) {
  String? categoria = "";
  String categoriaEscolhida = "";
  List<String> listaDeCategorias = [
    "eletronicos",
    "alimentos",
    "vestuario",
    "livros",
  ];

  void getCategoria() {
    print("Digite a categoria do produto (${listaDeCategorias.toString()}):");

    categoria = stdin.readLineSync();

    if (categoria != null) {
      categoriaEscolhida = categoria!;
      if (listaDeCategorias.contains(categoriaEscolhida)) {
        print("Categoria válida: $categoriaEscolhida");
      } else {
        print("$categoria não é uma categoria válida");
        getCategoria();
      }
    }
  }

  void getTipoDeArquivo() {
    String? arquivo = "";
    String arquivoEscolhido = "";
    List<String> tiposPermitidos = <String>["pdf", "jpg", "png", "docx"];

    print(
      "Digite qual o tipo de arquivos que será anexado? (${tiposPermitidos.toString()})",
    );

    arquivo = stdin.readLineSync();

    if (arquivo != null) {
      arquivoEscolhido = arquivo;
      if (tiposPermitidos.contains(arquivoEscolhido)) {
        print("Pode subir");
      } else {
        print("Tipo de arquivo não permitido.");
        getTipoDeArquivo();
      }
    }
  }

  void getMes() {
    print('Digite um número de 1 a 12 para saber o mês correspondente:');
    String? input = stdin.readLineSync();

    // Null safety e conversão de entrada
    int numero = int.parse(input!);

    // Função que retorna o mês correspondente
    String obterMes(int numero) {
      switch (numero) {
        case 1:
          return 'Janeiro';
        case 2:
          return 'Fevereiro';
        case 3:
          return 'Março';
        case 4:
          return 'Abril';
        case 5:
          return 'Maio';
        case 6:
          return 'Junho';
        case 7:
          return 'Julho';
        case 8:
          return 'Agosto';
        case 9:
          return 'Setembro';
        case 10:
          return 'Outubro';
        case 11:
          return 'Novembro';
        case 12:
          return 'Dezembro';
        default:
          getMes();
          return 'Número inválido. Por favor, insira um número de 1 a 12.';
      }
    }

    String mes = obterMes(numero);
    print(mes);
  }

  void pagamento() {
    String? operacao = "";
    String operacaoEscolhida = "";
    double valor = 0;
    List<String> operacoes = <String>[
      "deposito",
      "retirada",
      "transferencia",
      "pagamento",
    ];

    print("Digite uma operação (${operacoes.toString()})");

    operacao = stdin.readLineSync();

    if (operacao != null) {
      if (operacoes.contains(operacao)) {
        operacaoEscolhida = operacao;

        print("Digite o valor da operação:");

        valor = double.parse(stdin.readLineSync()!);

        if (valor > 0) {
          print("Operação escolhida: $operacaoEscolhida, Valor: $valor");
        }
      } else {
        pagamento();
      }
    } else {
      print("Por favor escolha uma das opções");
      pagamento();
    }
  }

  void formaDePagamento() {
    String? formaPagamento = "";
    String formaPagamentoEscolhida = "";
    List<String> metodosPagamentos = ["cartao", "boleto", "paypal", "pix"];

    print(
      "Escolha a forma de pagamento desejada: (${metodosPagamentos.toString()})",
    );

    formaPagamento = stdin.readLineSync();

    if (formaPagamento != null) {
      formaPagamentoEscolhida = formaPagamento;
      if (metodosPagamentos.contains(formaPagamentoEscolhida)) {
        print("A forma escolhida é: $formaPagamentoEscolhida");
      } else {
        print("Escolha uma forma de pagamento válida.");
        formaDePagamento();
      }
    }
  }

  formaDePagamento();
}
