//classe com construtor definido
/**
 * o contrutor é um método especial chamado ao instanciar objetos a partir de uma classe.
 * ele é chamado automaticamente quando usamos o new para instanciar objetos de uma classe.
 */
class Animal {
  String nome;
  double peso;
  String raca = "indefinido";

  //definindo construtor
  Animal(this.nome, this.peso);

  //metodos
  void comer(){
    print("$nome está comendo");
  }
}

void main() {
  Animal gato = new Animal("Zeca", 3.5);
  gato.raca = "Vira lata";
  gato.comer();
}