class Aluno {
  String? nome;
  String? matricula;
  String curso = '';

  //definindo métodos
  void mostrarDados(){
    print("Aluno: $nome Matrícula: $matricula Curso: $curso");
  }
}

void main(List<String> args) {
  Aluno aluno1 = new Aluno();
  aluno1.nome = "Maria";
  aluno1.matricula = "1234/2025";
  aluno1.curso = "Flutter";

  Aluno aluno2 = new Aluno();
  aluno2.nome = "Joãozinho";
  aluno2.matricula = "2134/2025";
  aluno2.curso = "PHP";
}
