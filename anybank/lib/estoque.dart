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
