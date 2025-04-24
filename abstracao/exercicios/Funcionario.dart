abstract class Funcionario {
  String nome;
  double salarioBase;

  Funcionario(this.nome, this.salarioBase);

  //metodo concreto
  void exibirDados(){
    print("Funcionário: $nome");
    print("Salário base: $salarioBase");
    print("Salário Líquido: ${salarioLiquido()}");
  }

  double salarioLiquido(); //metodo abstrato
}