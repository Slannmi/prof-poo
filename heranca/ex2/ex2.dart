import 'Bicicleta.dart';
import 'Carro.dart';

void main(List<String> args) {
  
  Carro car = Carro();
  car.mover();

  Bicicleta bike = Bicicleta();
  bike.mover();
}