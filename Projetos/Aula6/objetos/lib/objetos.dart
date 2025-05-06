import 'package:objetos/Humano.dart';

class objetos extends Humano {
  String pessoaNome = '';
  int idade = 0;
  String sexo = '';

  String _variavelLocal = '';

  objetos(
      {this.pessoaNome = '',
      this.idade = 0,
      this.sexo = '',
      peso: 0.00,
      altura: 0.00});
}
