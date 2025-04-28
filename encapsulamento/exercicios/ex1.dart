/**
 * Crie uma classe Produto com nome e um atributo privado _preco.
O setter de preco só deve permitir valores maiores que zero.
No main(), tente definir preços válidos e inválidos.
 */

class Produto{
  String nome;
  double _preco = 0;

  Produto(this.nome);

  //definindo getter e setter
  double get preco => _preco;

  set preco(double valor){
    if(valor > 0){
      _preco = valor;
    }else{
      print("Valor inválido");
    }
  }
}

void main(List<String> args) {
  var p1 = Produto("Notebook");
  p1.preco = 3000;
  print("${p1.nome} custa ${p1.preco} reais");

  p1.preco = 0;

}
