class Empresa {
  String nome;
  String ramo;
  int numeroFuncionarios;

  Empresa(this.nome, this.ramo, this.numeroFuncionarios);

  void resumo(){
    print("A empresa $nome atua no ramo de $ramo e possui $numeroFuncionarios funcionários.");
  }
}

void main(List<String> args) {
  Empresa e1 = new Empresa("Chief Delivery", "Software", 9899);
  Empresa e2 = new Empresa("Blusoft", "Associação", 120);

  e1.resumo();
  e2.resumo();
}