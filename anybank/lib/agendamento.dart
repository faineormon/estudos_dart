abstract class Agendamento {
  void calculaDuracaoConsulta();
  void verificaDisponibilidade();
}

class Medico implements Agendamento {
  @override
  void calculaDuracaoConsulta() {
    print("A consulta dura 30min.");
  }

  @override
  void verificaDisponibilidade() {
    print("Será verificada conforme o canlendário");
  }
}

class Dentista implements Agendamento {
  @override
  void calculaDuracaoConsulta() {
    print("A consulta dura 45min.");
  }

  @override
  void verificaDisponibilidade() {
    print("verificar disponibilidade considerando intervalos de 15 minutos");
  }
}

class GerenciadorDeAgendamentos {
  List<Agendamento> profissionais = [];

  void adicionarProfissional(Agendamento profissional) {
    profissionais.add(profissional);
  }

  void exibirDuracaoEDisponibilidade() {
    for (Agendamento profissional in profissionais) {
      profissional.calculaDuracaoConsulta();
      profissional.verificaDisponibilidade();
    }
  }
}
