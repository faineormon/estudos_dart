void main() {
  // Este é apenas um exemplo, os valores que a lista possui podem variar.

  List<String> tarefas = ["Estudar", "Comprar mantimentos"];

  //exibirTodasAsTarefas(tarefas);

  List<int> idsFuncionarios = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  //exibirApenasIdsPares(idsFuncionarios);

  List<String> produtos = ["maçã", "banana", "maçã", "laranja", "maçã"];

  //contagemDeEstoque(produtos);

  List<String> produtosCarrinho = [
    "arroz",
    "feijão",
    "macarrão",
    "leite",
    "açúcar",
  ];

  List<String> produtosVisitados = [
    "arroz",
    "feijão",
    "macarrão",
    "leite",
    "açúcar",
  ];

  //comparandoListaDeCompras(produtosCarrinho, produtosVisitados);

  Set<int> codigosDisponiveis = {1, 2, 3, 4, 5};
  int codigo = 3;

  //verificarCodigoDisponivel(codigosDisponiveis, codigo);

  Set<int> produtosSemana = {1, 2, 3, 4};

  Set<int> produtosMes = {3, 4, 5, 6};

  //exibirPromocoes(produtosSemana, produtosMes);

  Set<String> produtosVendidos = {"maçã", "banana", "laranja"};

  Set<String> produtosEstoque = {"banana", "kiwi", "laranja"};

  //exibirProdutosEmEstoque(produtosVendidos, produtosEstoque);

  Map<String, double> precosProdutos = {
    "Camiseta": 30.0,

    "Calça": 50.0,

    "Boné": 15.0,

    "Tênis": 120.0,
  };

  //calcularValorTotal(precosProdutos);

  Map<String, double> inventarioProdutos = {
    "Camiseta": 30.0,

    "Calça": 50.0,

    "Boné": 15.0,
  };

  //atualizarPreco(inventarioProdutos);

  // Lista de mapas, onde cada mapa contém o nome e a pontuação de um cliente.

  List<Map<String, dynamic>> clientes = [
    {"nome": "João", "pontuacao": 6.5},

    {"nome": "Maria", "pontuacao": 8.7},

    {"nome": "Pedro", "pontuacao": 9.2},

    {"nome": "Ana", "pontuacao": 5.4},
  ];

  exibirClientesAcimaDeSete(clientes);
}

void exibirTodasAsTarefas(List<String> tarefas) {
  for (String tarefa in tarefas) {
    print(tarefa);
  }
}

void exibirApenasIdsPares(List<int> idsFuncionarios) {
  for (int id in idsFuncionarios) {
    if (id % 2 == 0) {
      print(id);
    }
  }
}

void contagemDeEstoque(List<String> produtos) {
  int quantidade = 0;

  for (String produto in produtos) {
    if (produto == "maçã") {
      quantidade++;
    }
  }

  print(quantidade);
}

void comparandoListaDeCompras(
  List<String> produtosCarrinho,
  List<String> produtosVisitados,
) {
  for (String produto in produtosVisitados) {
    if (!produtosCarrinho.contains(produto)) {
      print(produto);
    }
  }
}

void verificarCodigoDisponivel(Set<int> codigosDisponivei, int codigo) {
  print(codigosDisponivei.contains(codigo));
}

void exibirPromocoes(Set<int> produtosSemana, Set<int> produtosMes) {
  Set<int> resultado = {};

  for (int produto in produtosSemana) {
    resultado.add(produto);
  }

  for (int produto in produtosMes) {
    resultado.add(produto);
  }

  for (int produto in resultado) {
    print(produto);
  }
}

void exibirProdutosEmEstoque(
  Set<String> produtosVendidos,
  Set<String> produtosEstoque,
) {
  for (String produtos in produtosEstoque) {
    if (!produtosVendidos.contains(produtos)) {
      print(produtos);
    }
  }
}

void calcularValorTotal(Map<String, double> precosProdutos) {
  double valorTotal = 0;

  for (double preco in precosProdutos.values) {
    valorTotal += preco;
  }

  print(valorTotal);
}

void atualizarPreco(Map<String, double> inventarioProdutos) {
  if (inventarioProdutos.containsKey("Boné")) {
    inventarioProdutos["Boné"] = 20.5;

    print(inventarioProdutos.toString());
  }
}

void exibirClientesAcimaDeSete(List<Map<String, dynamic>> clientes) {
  for (Map<String, dynamic> cliente in clientes) {
    if (cliente["pontuacao"] > 7) {
      print(cliente["nome"]);
    }
  }
}
