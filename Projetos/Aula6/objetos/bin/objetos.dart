import 'package:objetos/objetos.dart' as objetos;

void main(List<String> arguments) {
  var pessoa = objetos.objetos(
      pessoaNome: 'Faine',
      idade: 40,
      sexo: 'Feminino',
      peso: 75.00,
      altura: 1.60);

  print(pessoa.pessoaNome);
  print(pessoa.idade);
  print(pessoa.sexo);
}
