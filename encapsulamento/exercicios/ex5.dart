/**
 * Crie a classe Estoque com um atributo privado _quantidade.
O setter deve impedir valores negativos.
O getter retorna a quantidade atual em estoque
 */

class Estoque{

  int _quantidade = 0;

  int get quantidade => _quantidade;

  set quantidade(int novaQuant){
    if(novaQuant > 0){
      _quantidade = novaQuant;
    }else{
      print("Quantidade inválida");
    }
  }
}

void main(List<String> args) {
  var e = Estoque();
  e.quantidade = 50;
  print("Estoque atual: ${e.quantidade}");
  e.quantidade = -1;
  
}