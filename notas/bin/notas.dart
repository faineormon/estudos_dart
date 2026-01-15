import 'dart:io';

void main() {
  List<String> notas = <String>[];
  String comando = "";

  comando = getComando();

  if (comando == "1") {
    adicionaNotas(notas);
  }

  if (comando == "2") {
    listarNotas(notas);
  }
}

String getComando() {
  List<String> comandos = <String>["1", "2", "3"];
  String? entrada = "";

  print("Digite um comando: 1 - Adicionar nota, 2 - Listar notas, 3 - Sair");

  entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)) {
    print("Comando inválido.");
    getComando();
  }

  return entrada!;
}

List<String> adicionaNotas(List<String> notas) {
  String? nota = "";

  print("Escreva uma onota");

  nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty) {
    print("Não é possível adicionar uma nota vazia.");
    adicionaNotas(notas);
  }

  notas.add(nota!);

  return notas;
}

void listarNotas(List<String> notas) {
  for (var i = 0; i < notas.length; i++) {
    print(notas[i]);
  }
}
