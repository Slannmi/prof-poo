class ItemCarrinho {
  final String nome;
  final double preco;
  ItemCarrinho(this.nome, this.preco);
}

abstract class Pagamento {
  void pagar(double valor);
}

class PagamentoCredito implements Pagamento {
  @override
  void pagar(double valor) => print('Pagamento com crédito: R\$ \$valor');
}

class CarrinhoDeCompras {
  final List<ItemCarrinho> itens = [];

  void adicionar(ItemCarrinho item) => itens.add(item);

  double total() => itens.map((i) => i.preco).reduce((a, b) => a + b);

  void finalizar(Pagamento pagamento) => pagamento.pagar(total());
}