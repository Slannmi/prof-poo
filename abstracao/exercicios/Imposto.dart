abstract class Imposto {

  double calcular(double valor); //metodo abstrato

  //método concreto - só preciso sobrescrever ele se usar implements na classe filha
  void exibirImposto(double valor){
    double imposto = calcular(valor);
    print("Imposto sobre R\$ ${valor.toStringAsFixed(2)} é de R\$ ${imposto.toStringAsFixed(2)}");
  }

}