abstract class Modulo {
  double calcularNota();
}

class ModuloMatematica implements Modulo {
  @override
  double calcularNota() => 9.5;
}

class Curso {
  final List<Modulo> modulos;
  Curso(this.modulos);

  double calcularMedia() =>
    modulos.map((m) => m.calcularNota()).reduce((a, b) => a + b) / modulos.length;
}