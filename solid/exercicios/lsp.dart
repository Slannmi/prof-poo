// LSP - Refatore para que Quadrado não quebre o comportamento esperado do Retangulo. Ou, se necessário, crie uma hierarquia adequada.

/* class Retangulo {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  double area() => largura * altura;
}

class Quadrado extends Retangulo {
  Quadrado(double tamanho) : super(tamanho, tamanho);
}
 */
//refatorando
abstract class Forma{
  double calcularArea();
}

class Retangulo implements Forma{
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  @override
  double calcularArea() => largura * altura;
}

class Quadrado implements Forma{
  double lado;

  Quadrado(this.lado);

  @override
  double calcularArea() => lado * lado;
}