import 'Aluno.dart';
import 'Cachorro.dart';
import 'Gato.dart';

/**
herança é um dos pilares da programação orientada a objetos (POO).
ela permite que uma classe herde atributos e métodos de outra classe, promovendo a reutilização de código e especialização do comportamento.

termo           |   explicação
superclasse     | a classe base que será herdada (também chamada de classe pai)
subclasse       | a classe que herda da superclasse (também chamada de classe filha)
extends         | palavra-chave usada para definir herança
super           | palavra-chave usada para acessar membros da superclasse
 */

void main(List<String> args) {
  Cachorro dog = new Cachorro();
  dog.dormir();
  dog.latir();

  /** 
   SOBRESCRITA DE MÉTODOS
   a subclasse (filha) pode sobrescrever métodos da superclasse (pai) @override
   a anotação @override é opcional, porém é mais seguro utilizar para segurança no código a nivel de compilação para evitar erros de digitação.
   usar @override deixa claro que você está sobescrevendo um método que existe na classe pai. Isso facilita a leitura e manutenção do código
  */

  Gato cat = new Gato();
  cat.emitirSom();

  /**
   * CONSTRUTORES E SUPER
   * a subclasse pode chamar o construtor da classe pai usando a palavra super
   */

  Aluno aluno = Aluno("Diego", "Flutter");
  print("O aluno ${aluno.nome} está cursando ${aluno.curso}");
}