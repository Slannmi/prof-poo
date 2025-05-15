class Autor {
  final String nome;
  Autor(this.nome);
}

class Livro {
  final String titulo;
  final Autor autor;
  Livro(this.titulo, this.autor);
}

abstract class Usuario {
  String get nome;
}

class AlunoUsuario implements Usuario {
  @override
  final String nome;
  AlunoUsuario(this.nome);
}

class Professor implements Usuario {
  @override
  final String nome;
  Professor(this.nome);
}

class Biblioteca {
  final List<Livro> livros = [];

  void emprestarLivro(Livro livro, Usuario usuario) =>
    print('\${usuario.nome} emprestou o livro: \${livro.titulo}');
}

abstract class CanalNotificacao {
  void notificar(String mensagem);
}

class EmailNotificacao implements CanalNotificacao {
  @override
  void notificar(String mensagem) => print('Email enviado: \$mensagem');
}