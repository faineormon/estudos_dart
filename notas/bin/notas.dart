import 'dart:io';

void main() {
  List<String> notas = <String>[];

  menu(notas);
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

  print("Escreva uma nota");

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

void menu(List<String> notas) {
  String comando = "";

  print("");
  cabecalho();
  print("");
  comando = getComando();
  print("");

  switch (comando) {
    case "1":
      adicionaNotas(notas);
      menu(notas);
      break;

    case "2":
      listarNotas(notas);
      menu(notas);
      break;

    case "3":
      print("Até breve");
      break;
  }
}

void cabecalho() {
  print(" +-++-++-++-++-+ ");
  print(" |n||o||t||a||s| ");
  print(" +-++-++-++-++-+ ");
}
