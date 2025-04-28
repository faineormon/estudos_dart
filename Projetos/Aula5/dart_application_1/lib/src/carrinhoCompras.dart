import "dart:io";

List<String> produtos = [];

dynamic carrinhoCompras() {
  var condicao = true;

  while (condicao) {
    print('== ADICIONE UM PRODUTO A SUA LISTA DE COMPRAS ==');
    var text = stdin.readLineSync()!;

    if (text == 'sair') {
      print('== FIM DA LISTA ==');
      condicao = false;
    } else if (text == 'imprimir') {
      exibir();
    } else if (text == 'remover') {
      remover();
    } else {
      produtos.add(text);
    }
  }
}

dynamic exibir() {
  for (var i = 0; i < produtos.length; i++) {
    print('$i - ${produtos[i]}');
  }
}

dynamic remover() {
  print('== QUAL ITEM DESEJA REMOVER? ==');

  exibir();

  var item = int.parse(stdin.readLineSync()!);
  produtos.removeAt(item);
  print('== ITEM REMOVIDO ==');
}
