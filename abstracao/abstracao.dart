import 'Cachorro.dart';
import 'Gato.dart';

/**
 abstração é o princípio da programação orientada a objetos (POO) que permite ocultar os detalhes internos e mostrar apenas o que é relevante para o uso de uma classe ou método.
 é como dirigir um carro: você só precisa saber como usar o volante, pedais e marcha. Mas não precisa saber como o motor funciona;
 IMPORTANTE SOBRE CLASSES ABSTRATAS
 - não pode ser instanciada diretamente
 - serve como modelo para outras classes
 - pode ter métodos implementados e métodos sem implementação (abstratos)
 */
void main(List<String> args) {
  Cachorro dog = Cachorro();
  dog.emitirSom();
  dog.dormir();

  Gato cat = Gato();
  cat.emitirSom();
  cat.dormir();

  //usando interface através do implements
  //quando usamos implements, a classe é obrigada a implementar tudo que existe na classe abstrata, incluindo métodos já implementados
}