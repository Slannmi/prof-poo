import 'Pagamento.dart';

class PagamentoPix implements Pagamento{
  double valorPagamento;

  PagamentoPix(this.valorPagamento);

  @override
  void realizaPagamento(){
    print("pagamento realizado com PIX no valor R\$ $valorPagamento");
  }

  void emitirComprovante(){
    print("Pagamento via pix confirmado.");
  }
}