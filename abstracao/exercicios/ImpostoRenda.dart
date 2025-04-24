import 'Imposto.dart';

class ImpostoRenda  extends Imposto{

  double calcular(double valor){
    return valor * 0.15;
  }
}