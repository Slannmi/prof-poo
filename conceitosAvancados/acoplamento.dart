/**
 * ACOPLAMENTO
 * indica o nível de dependência entre classes
 * baixo acoplamento é desejável, pois significa que as classes estão bem isoladas e independentes.
 * exemplo
 * uma classe pedido que depende diretamente de uma classe cliente (e não de uma interface) tem um acoplamento forte
 */

//exemplo de acoplamento forte (má prática)
/* class cartaoCredito{
  void pagar(double valor){
    print("pagamento com cartão: R\$ $valor");
  }
}

class Caixa{
  final cartaoCredito cartao = cartaoCredito();

  void finalizarCompra(double valor){
    cartao.pagar(valor); //forte dependência da classe concreta
  }
} */

//baixo acoplamento
abstract class MetodoPagamento{
  void pagar(double valor);
}

class CartaoCredito implements MetodoPagamento{
  @override
  void pagar(double valor) {
    print("Pagando R\$ $valor no cartão de crédito");
  }
}

class Caixa{
  final MetodoPagamento metodo;

  Caixa(this.metodo);

  void finalizarCompra(double valor){
    metodo.pagar(valor);
  }
}

