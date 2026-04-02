import 'package:anybank/animal.dart';
import 'package:anybank/agendamento.dart';
import 'package:anybank/anybank.dart' as anybank;
import 'package:anybank/estoque.dart' as estoque;
import 'package:anybank/funcionarios.dart';
import 'package:anybank/hotel.dart';

void main() {
  //print('Hello world: ${anybank.calculate()}!');
  anybank.ContaCorrente contaMatheus = anybank.ContaCorrente("Matheus", 1000);
  anybank.ContaCorrente contaRoberta = anybank.ContaCorrente("Roberta", 2000);
  anybank.ContaCorrente contaCris = anybank.ContaCorrente("Cris", 4000);
  anybank.ContaPoupanca contaDenise = anybank.ContaPoupanca("Denise", 4000);
  anybank.ContaSalario contaCatarina = anybank.ContaSalario(
    "Catarina",
    3000,
    "anybank",
    "123456789",
  );
  anybank.ContaEmpresa contaJose = anybank.ContaEmpresa("José", 2000);
  anybank.ContaInvestimento contaMaria = anybank.ContaInvestimento(
    "Maria",
    2000,
  );

  List<anybank.Conta> contas = <anybank.Conta>[contaMatheus, contaRoberta];

  for (anybank.Conta conta in contas) {
    conta.imprimeSaldo();
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

  // Criando instâncias de frutas, legumes e temperos
  var banana = estoque.Fruta('Banana');
  var cenoura = estoque.Legume('Cenoura');
  var sal = estoque.Tempero('Sal');

  // Exibindo os detalhes
  banana.detalhes();
  print('');
  cenoura.detalhes();
  print('');
  sal.detalhes();

  contaRoberta.receber(3000);

  contaMatheus.receber(500);

  contaMatheus.enviar(200);

  contaCris.imprimeSaldo();
  contaCris.enviar(4300);

  contaDenise.imprimeSaldo();
  contaDenise.enviar(4300);
  contaDenise.calculaRendimento();
  contaDenise.imprimeSaldo();

  contaCatarina.imprimeSaldo();
  contaCatarina.receber(3000);

  contaJose.enviar(1000);

  contaMaria.receber(1000);

  Cliente cliente = Cliente('Joaquim', []);

  cliente.fazerReserva('101');
  cliente.fazerReserva('102');
  cliente.fazerReserva('103');
  cliente.cancelarReserva('102');

  QuartoSimples quartoSimples = QuartoSimples(3);
  quartoSimples.reservar();
  quartoSimples.calcularValorTotal();
  QuartoMedio quartoMedio = QuartoMedio(5);
  quartoMedio.reservar();
  quartoMedio.servirCafeDaManha();
  quartoMedio.calcularValorTotal();
  QuartoLuxo quartoLuxo = QuartoLuxo(7);
  quartoLuxo.reservar();
  quartoLuxo.servirCafeDaManha();
  quartoLuxo.servicoDeQuarto();
  quartoLuxo.calcularValorTotal();

  Cachorro cachorro = Cachorro();

  cachorro.emitirSom();
  cachorro.abanarRabo();

  Gato gato = Gato();

  gato.emitirSom();
  gato.arranharMoveis();

  Funcionarios analista = Analista("João");
  Funcionarios gerente = Gerente("Maria");
  Funcionarios diretor = Diretor("Giovana");

  // Impressão dos cálculos de salário
  print('Salário do Analista João: R\$ ${analista.calcularSalario()}');
  print('Salário da Gerente Maria: R\$ ${gerente.calcularSalario()}');
  print('Salário da Diretora Giovana: R\$ ${diretor.calcularSalario()}');

  Medico medico = Medico();
  Dentista dentista = Dentista();

  GerenciadorDeAgendamentos gerenciador = GerenciadorDeAgendamentos();
  gerenciador.adicionarProfissional(medico);
  gerenciador.adicionarProfissional(dentista);

  gerenciador.exibirDuracaoEDisponibilidade();
}
