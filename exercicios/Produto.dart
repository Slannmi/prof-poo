class Produto {
  String nome;
  double preco;
  int quantidade;

  Produto(this.nome, this.preco, this.quantidade);

  //metodo para exibir
  void exibirProduto(){
    print("Produto: $nome Valor: R\$ $preco Quantidade: $quantidade");
  }
}

void main(List<String> args) {
  Produto p1 = new Produto("Cerveja Heineken", 8.99, 10);
  Produto p2 = new Produto("Torresmo prensado", 90.99, 2);

  p1.exibirProduto();
  p2.exibirProduto();
}