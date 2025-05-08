class Jogador{
  String nome;
  Jogador(this.nome);

  void apresentar() => print("jogador: $nome");
}

class Time{
  String nome;
  List<Jogador> jogadores = [];

  Time(this.nome);

  void adicionarJogador(Jogador jogador) => jogadores.add(jogador);

  void listarJogadores(){
    print("Time: $nome");
    for(var jogador in jogadores){
      print("${jogador.nome}");
    }
  }
}

//usando
void main(List<String> args) {
  Jogador j1 = Jogador("Cristiano");
  Jogador j2 = Jogador("Ronaldinho Gaúcho");
  Jogador j3 = Jogador("Kaka");

  Time time = Time("Fluminense");
  time.adicionarJogador(j1);
  time.adicionarJogador(j2);

  time.listarJogadores();

  print("jogadores sem time");
  j3.apresentar();
}
