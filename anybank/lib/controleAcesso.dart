mixin ControleAcesso {
  bool verificarPermissaoAdmin(String papel) {
    return papel == 'admin';
  }

  void executarOperacao(String papel, Function operacao) {
    if (verificarPermissaoAdmin(papel)) {
      operacao();
    } else {
      print('Acesso negado');
    }
  }
}

class ServicoUsuario with ControleAcesso {
  void deletarUsuario() {
    executarOperacao('admin', () => print('Usuário deletado'));
  }
}

class ServicoProduto with ControleAcesso {
  void adicionarProduto() {
    executarOperacao('admin', () => print('Produto adicionado'));
  }
}
