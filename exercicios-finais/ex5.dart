abstract class Forma {
  double area();
}

class Quadrado implements Forma {
  final double lado;
  Quadrado(this.lado);

  @override
  double area() => lado * lado;
}

class Retangulo implements Forma {
  final double largura;
  final double altura;
  Retangulo(this.largura, this.altura);

  @override
  double area() => largura * altura;
}

double somarAreas(List<Forma> formas) =>
  formas.map((f) => f.area()).reduce((a, b) => a + b);