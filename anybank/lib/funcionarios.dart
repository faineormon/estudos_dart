abstract class Funcionarios {
  String nomeFuncionario;
  double salarioBase;

  Funcionarios(this.nomeFuncionario) : salarioBase = 3000.00;

  double calcularSalario();
}

class Analista extends Funcionarios {
  Analista(super.nomeFuncionario);

  @override
  double calcularSalario() {
    return salarioBase += salarioBase * 1.2;
  }
}

class Gerente extends Funcionarios {
  Gerente(String nomeFuncionario) : super(nomeFuncionario);

  @override
  double calcularSalario() {
    return salarioBase += salarioBase * 1.5;
  }
}

class Diretor extends Funcionarios {
  Diretor(String nomeFuncionario) : super(nomeFuncionario);

  @override
  double calcularSalario() {
    return salarioBase += salarioBase * 2.0;
  }
}
