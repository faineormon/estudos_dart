int calculate() {
  return 6 * 7;
}

class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);

  void receber(double valor) {
    saldo += valor;
  }

  void enviar(double valor) {
    saldo -= valor;
  }
}
