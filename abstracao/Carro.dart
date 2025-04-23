import 'Veiculo.dart';

class Carro extends Veiculo{
  @override
  void ligar(){
    print("ligando o carro com chave");
  }
  
  @override
  void desligar(){
    print("desligando carro");
  }

  @override
  void abastecer() {
    print("Abastecendo com gasolina");
  }
}