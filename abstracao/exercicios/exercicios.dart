import 'Email.dart';
import 'FuncionarioCLT.dart';
import 'FuncionarioPJ.dart';
import 'ImpostoProduto.dart';
import 'ImpostoRenda.dart';
import 'SMS.dart';
import 'Zap.dart';

void main(List<String> args) {
  
  Email mail = Email();
  mail.enviar("enviando por e-mail");

  SMS torpedo = SMS();
  torpedo.enviar("enviando mensagem por sms");

  //enviando zap
  Zap zap = Zap();
  // print(zap.send("Enviando um zap pra galera"));
  String recebida = zap.send("enviando valores");
  print(recebida);

  //exercicio 2

  ImpostoRenda ir = ImpostoRenda();
  ir.exibirImposto(3000);

  ImpostoProduto ip = ImpostoProduto();
  ip.exibirImposto(9500);

  //exercicio 4
  FuncionarioCLT clt = FuncionarioCLT("Maria", 3500, 350, 250);
  clt.exibirDados();

  FuncionarioPJ pj = FuncionarioPJ("Diego", 3500);
  pj.exibirDados();

}