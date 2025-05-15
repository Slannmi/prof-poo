class Endereco {
  final String rua;
  final String cidade;

  Endereco(this.rua, this.cidade);

  void mostrar() => print('\$rua - \$cidade');
}

class Aluno {
  final String nome;
  final Endereco endereco;

  Aluno(this.nome, this.endereco);
}