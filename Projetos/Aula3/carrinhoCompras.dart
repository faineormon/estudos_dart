import "dart:io";

List<String> produtos = [];

main() {
  bool condicao = true;

  while (condicao) {
    print("== ADICIONE UM PRODUTO A SUA LISTA DE COMPRAS ==");
    String text = stdin.readLineSync()!;

    if (text == "sair") {
      print("== FIM DA LISTA ==");
      condicao = false;
    } else if (text == "imprimir") {
      exibir();
    } else if (text == "remover") {
      remover();
    } else {
      produtos.add(text);
    }
  }
}

exibir() {
  for (int i = 0; i < produtos.length; i++) {
    print("$i - ${produtos[i]}");
  }
}

remover() {
  print("== QUAL ITEM DESEJA REMOVER? ==");

  exibir();

  int item = int.parse(stdin.readLineSync()!);
  produtos.removeAt(item);
  print("== ITEM REMOVIDO ==");
}
