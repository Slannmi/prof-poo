abstract class Trabalhador {
  void trabalhar();
}

abstract class SerHumano {
  void fazerPausa();
}

class Funcionario implements Trabalhador, SerHumano {
  @override
  void trabalhar() => print('Funcionario trabalhando');

  @override
  void fazerPausa() => print('Funcionario fazendo pausa');
}

class Robo implements Trabalhador {
  @override
  void trabalhar() => print('Robô trabalhando');
}