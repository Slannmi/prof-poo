import 'dart:ffi';

/**
 * OCP - OPEN-CLOSED PRINCIPLE
 * VIOLANDO OCP
 * toda vez que surgir um novo produto teremos que alterar a classe
 */

class CalculadoraImpostos{
  double calcular(String tipoProduto){
    if(tipoProduto == 'eletronico'){
      return 100 * 0.2;
    }else if(tipoProduto == 'alimento'){
      return 50 * 0.05;
    }else{
      return 0;
    }
  }
}

/**
 * SOLUÇÃO
 * basta criar novas classes de produtos. Não precisa alterar a calculadora
 */
abstract class Produto{
  double calcularImposto();
}

class Eletronico implements Produto{
  @override
  double calcularImposto() {
    return 100 * 0.2;
  }
}

class Alimento implements Produto{
  @override
  double calcularImposto() => 50 * 0.05;
}

class CalcularImpostos{
  double calcular(Produto produto){
    return produto.calcularImposto();
  }
}

void main(List<String> args) {
  final calculadora = CalcularImpostos();
  print("Imposto eletronicos: ${calculadora.calcular(Eletronico())}");
  print("Imposto alimentos: ${calculadora.calcular(Alimento())}");
}