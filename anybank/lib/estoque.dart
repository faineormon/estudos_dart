class ItemEstoque {
  String nomeProduto;
  int quantidade;
  double preco;

  ItemEstoque(this.nomeProduto, this.quantidade, this.preco);

  void registrarEntrada(int entrada) {
    quantidade += entrada;
  }

  void registrarSaida(int saida) {
    if (quantidade >= saida) {
      quantidade -= saida;
    } else {
      print("Quantidade insuficiente em estoque para realizar a saída");
    }
  }

  void atualizarPreco(double precoNovo) {
    preco = precoNovo;
  }
}

class Funcionario {
  String nome;
  double salario;

  Funcionario(this.nome, this.salario);

  void trabalhar() {
    print("$nome trabalhou");
  }
}

class Cozinheiro extends Funcionario {
  Cozinheiro(super.nome, super.salario);

  @override
  void trabalhar() {
    print("$nome trabalhou na cozinha");
  }
}

class Garcom extends Funcionario {
  Garcom(super.nome, super.salario);

  @override
  void trabalhar() {
    print("$nome trabalhou no atendimento");
  }
}

class Gerente extends Funcionario {
  Gerente(super.nome, super.salario);

  @override
  void trabalhar() {
    print("$nome gerenciou a equipe");
  }
}

// Classe base Ingrediente
abstract class Ingrediente {
  String nome;
  String tipo;

  Ingrediente(this.nome, this.tipo);

  void detalhes() {
    print('Ingrediente: $nome');
    print('Tipo: $tipo');
  }
}

// Classe Fruta, que herda de Ingrediente
class Fruta extends Ingrediente {
  Fruta(String nome) : super(nome, 'Fruta');

  @override
  void detalhes() {
    print('Detalhe: As frutas geralmente não são cozidas nas receitas.');
  }
}

// Classe Legume, que herda de Ingrediente
class Legume extends Ingrediente {
  Legume(String nome) : super(nome, 'Legume');

  @override
  void detalhes() {
    print('Detalhe: Os legumes geralmente precisam ser cozidos nas receitas.');
  }
}

// Classe Tempero, que herda de Ingrediente
class Tempero extends Ingrediente {
  Tempero(String nome) : super(nome, 'Tempero');

  @override
  void detalhes() {
    print('Detalhe: Os temperos são usados para condimentar os alimentos.');
  }
}
