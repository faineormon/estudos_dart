import "dart:io";

main() {
  List<String> produtos = [];
  bool condicao = true;

  while (condicao) {
    print("== ADICIONE UM PRODUTO A SUA LISTA DE COMPRAS ==");
    String text = stdin.readLineSync()!;

    if (text == "sair") {
      print("== FIM DA LISTA ==");
      condicao = false;
    } else if (text == "imprimir") {
      for (int i = 0; i < produtos.length; i++) {
        print("$i - ${produtos[i]}");
      }
    } else {
      produtos.add(text);
    }
  }
}
