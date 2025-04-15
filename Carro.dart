class Carro {

    //propriedades
    String? modelo;
    int? ano;
    bool ligado = false;

    //metodos
    String apresentar(){
      return "Carro: $modelo Ano: $ano";
    }

    void ligar(){
      ligado = true;
      print("O $modelo está sendo ligado");
    }

    void dirigir(){
      if(ligado){
        print("Dirigindo $modelo");
      }else{
        print("para dirigir, ligue o carro...");
      }

    }
}