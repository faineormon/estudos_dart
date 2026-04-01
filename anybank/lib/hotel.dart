class Cliente {
  String nomeCliente;
  List<String> _reservas;

  Cliente(this.nomeCliente, this._reservas);

  void fazerReserva(String quarto) {
    _reservas.add(quarto);
    _mostrarResevas();
  }

  void cancelarReserva(String quarto) {
    if (_reservas.contains(quarto)) {
      _reservas.remove(quarto);
      _mostrarResevas();
    }
  }

  void _mostrarResevas() {
    print(_reservas);
  }
}

class Quarto {
  String tipo;
  double valorDiaria;
  int diarias;

  Quarto(this.diarias, this.valorDiaria, this.tipo);

  void reservar() {
    print("Reserva realizada para $diarias diarias no quarto $tipo.");
  }

  void calcularValorTotal() {
    print("Total a pagar: R\$${diarias * valorDiaria}");
  }
}

class QuartoSimples extends Quarto {
  QuartoSimples(int diarias) : super(diarias, 80, 'Simples');
}

class QuartoMedio extends Quarto {
  QuartoMedio(int diarias) : super(diarias, 250, 'Médio');

  void servirCafeDaManha() {
    print("Servindo cafe da manha no quarto $tipo.");
  }
}

class QuartoLuxo extends Quarto {
  QuartoLuxo(int diarias) : super(diarias, 1000, 'Luxo');

  void servirCafeDaManha() {
    print("Servindo cafe da manha no quarto $tipo.");
  }

  void servicoDeQuarto() {
    print("Limpando o quarto $tipo.");
  }
}
