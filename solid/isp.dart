/**
 * ISP - INTERFACE SEGREGATION PINCIPLE
 * EXEMPLO VIOLANDO
 * o robô é forçado a implementar o método comer, porém eles não comem
 */
abstract class Funcionario{
  void trabalhar();
  void comer();
}

/* class Robo implements Funcionario{
  @override
  void trabalhar() {
    print("robô trabalhado");
  }

  @override
  void comer() {
    throw Exception("Robô não come");
  }
} */
/**
 * SOLUÇÃO
 * interfaces menores: cada classe implementa apenas o que precisa
 */
abstract class Trabalhador {
  void trabalhar();
}

abstract class Alimentador{
  void comer();
}

class Robo implements Trabalhador{
  @override
  void trabalhar(){
    print("Robô trabalhando");
  }
}

class Humano implements Trabalhador, Alimentador{
  @override
  void trabalhar() {
    print("humano trabalhando");
  }

  @override
  void comer() {
    print("humano comendo");
  }
}