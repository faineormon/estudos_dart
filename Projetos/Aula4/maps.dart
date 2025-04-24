import 'dart:io';

List<Map<String, dynamic>> cadastros = [];

main() {
  bool condicao = true;

  while (condicao) {
    print("== DIGITE O QUE QUER FAZER ==");
    String comando = stdin.readLineSync()!;

    if (comando == "sair") {
      print("== PROGRAMA FINALIZADO ==");
      condicao = false;
    } else if (comando == "cadastro") {
      cadastrar();
    } else if (comando == "imprimir") {
      print(cadastros);
    } else {
      print("== ESSE COMANDO NAO EXISTE ==");
    }
  }
}

cadastrar() {
  Map<String, dynamic> cadastro = {};

  print("== DIGITE SEU NOME ==");
  cadastro["nome"] = stdin.readLineSync();

  print("== DIGITE SUA IDADE ==");
  cadastro["idade"] = int.parse(stdin.readLineSync()!);

  print("== DIGITE SUA CIDADE ==");
  cadastro["cidade"] = stdin.readLineSync();

  print("== DIGITE SEU ESTADO ==");
  cadastro["estado"] = stdin.readLineSync();

  cadastros.add(cadastro);
}
