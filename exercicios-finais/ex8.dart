class Item {
  final String nome;
  final double preco;
  Item(this.nome, this.preco);
}

class Pedido {
  final List<Item> itens = [];

  void adicionar(Item item) => itens.add(item);
}

abstract class CalculadorDePreco {
  double calcular(Pedido pedido);
}

class CalculadorSimples implements CalculadorDePreco {
  @override
  double calcular(Pedido pedido) =>
    pedido.itens.map((i) => i.preco).reduce((a, b) => a + b);
}

class Garcom {
  void registrarPedido(Pedido pedido) => print('Pedido registrado com \${pedido.itens.length} itens.');
}