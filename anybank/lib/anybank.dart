int calculate() {
  return 6 * 7;
}

abstract class Conta {
  String titular;
  double _saldo;

  Conta(this.titular, this._saldo);

  void receber(double valor) {
    _saldo += valor;
    imprimeSaldo();
  }

  void enviar(double valor) {
    if (_saldo >= valor) {
      _saldo -= valor;
      imprimeSaldo();
    }
  }

  void imprimeSaldo() {
    print("O saldo atual de $titular, é: R\$$_saldo");
  }
}

class ContaCorrente extends Conta {
  double emprestimo = 300;

  ContaCorrente(super.titular, super._saldo);

  @override
  void enviar(double valor) {
    if (_saldo + emprestimo >= valor) {
      _saldo -= valor;

      imprimeSaldo();
    }
  }
}

class ContaPoupanca extends Conta {
  double rendimento = 0.05;

  ContaPoupanca(super.titular, super._saldo);

  void calculaRendimento() {
    _saldo += _saldo * rendimento;
  }
}

class ContaSalario extends Conta {
  String empresa;
  String cnpj;

  ContaSalario(super.titular, super._saldo, this.empresa, this.cnpj);

  @override
  void receber(double valor) {
    _saldo += valor;

    print(
      "O salário da $empresa, de CNPJ $cnpj no valor de R\$$valor, foi depositado!",
    );
  }
}
