/**
 * Crie uma classe Produto com um atributo privado _nome.
O setter deve armazenar o nome com a primeira letra maiúscula.
O getter retorna o nome formatado.
dicas: utilize trim() toUpperCase() substring() e toLowerCase()
 */

class Produto{
  String _nome = '';

  String get nome => _nome;

  set nome(String valor){
    valor = valor.trim();
    if(valor.isNotEmpty){
      _nome = valor[0].toUpperCase() + valor.substring(1).toLowerCase();
    }else{
      print("nome inválido");
    }
  }

}
void main(List<String> args) {
  var p = Produto();
  p.nome = ' beterraba';
  print("Produto: ${p.nome}");

  p.nome = '';

}