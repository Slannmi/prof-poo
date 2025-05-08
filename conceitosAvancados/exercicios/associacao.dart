class Autor{
  final String nome;
  final List<Livro> livros = [];
  Autor(this.nome);
  void adicionarLivro(Livro livro) => livros.add(livro);
}

class Livro{
  final String titulo;
  final Autor autor;
  Livro(this.titulo, this.autor);
  void exibir() => print("Livro: $titulo Autor: ${autor.nome}");
}
//exemplo de uso
void main(List<String> args) {
  Autor a1 = Autor("Clarice Lispector");
  Livro l1 = Livro("A hora da estrela",a1);
  Livro l2 = Livro("Perto do coração selvagem", a1);

  l1.exibir();
  l2.exibir();

  print("\n Livros do autor: ${a1.nome}");
  for(var livro in a1.livros){
    print("Livro: ${livro.titulo}");
  }
}