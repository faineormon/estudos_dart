import 'package:anybank/anybank.dart' as anybank;
import 'package:anybank/estoque.dart' as estoque;

void main() {
  //print('Hello world: ${anybank.calculate()}!');
  anybank.Conta contaMatheus = anybank.Conta("Matheus", 1000);
  anybank.Conta contaRoberta = anybank.Conta("Roberta", 2000);

  List<anybank.Conta> contas = <anybank.Conta>[contaMatheus, contaRoberta];

  for (anybank.Conta conta in contas) {
    print(conta.titular);
    print(conta.saldo);
  }

  estoque.ItemEstoque produto1 = estoque.ItemEstoque("Smartphone", 100, 0);
  estoque.ItemEstoque produto2 = estoque.ItemEstoque("Notebook", 50, 0);

  produto1.registrarEntrada(20);
  produto2.registrarSaida(10);

  List<estoque.ItemEstoque> itensEstoque = <estoque.ItemEstoque>[
    produto1,
    produto2,
  ];

  itensEstoque.add(estoque.ItemEstoque("Tablet", 75, 1999.99));

  produto1.atualizarPreco(2999.99);
  produto2.atualizarPreco(4999.99);

  for (estoque.ItemEstoque item in itensEstoque) {
    print(
      'Produto: ${item.nomeProduto}, Quantidade em estoque: ${item.quantidade}, Preço de venda: ${item.preco}',
    );
  }
}
