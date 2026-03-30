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
