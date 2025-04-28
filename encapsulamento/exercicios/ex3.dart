/**
 * Crie uma classe Cofrinho com um atributo privado _saldo.
Use um getter para retornar o saldo.
O setter deve permitir adicionar valores positivos ao saldo, recusando valores negativos ou zero.
 */

class Cofrinho{
  double _saldo = 0;

  double get saldo => _saldo;

  set depositar(double deposito){
    if(deposito > 0){
      _saldo += deposito;
    }else{
      print("Bota um dinheiro ai nego.");
    }
  }
}

void main(List<String> args) {
  var cofre = Cofrinho();
  cofre.depositar = 100;
  print("saldo atual ${cofre.saldo}");
  cofre.depositar = -50;

}