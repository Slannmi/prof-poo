/* SRP - Refatore o código para que cada classe tenha apenas uma responsabilidade (ex: salvar usuário ou autenticar usuário). */
class UsuarioManager {
  void salvarUsuario(String nome) {
    print('Usuário $nome salvo no banco de dados.');
  }

  bool autenticar(String usuario, String senha) {
    return usuario == 'admin' && senha == '123';
  }
}

//refatoração
class UsuarioRecovery{
  void salvarUsuario(String nome){
    print("Usuário $nome salvo no banco de dados.");
  }
}

class Autenticator{
  bool autenticar(String usuario, String senha) {
    return usuario == 'admin' && senha == '123';
  }
}