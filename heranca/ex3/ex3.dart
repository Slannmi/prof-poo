import 'Gerente.dart';
import 'Programador.dart';

void main(List<String> args) {
  Gerente ge = Gerente("Diego", 10000);
  Programador prog = Programador("Jonas", 8000);
  print("${ge.nome} tem ${ge.calcularBonus()} de bônus");
  print("${prog.nome} tem ${prog.calcularBonus()} de bônus");
}