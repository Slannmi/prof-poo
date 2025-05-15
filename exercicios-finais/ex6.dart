class Cliente {
  final String nome;
  Cliente(this.nome);
}

abstract class ContaBancaria {
  final Cliente cliente;
  double saldo = 0;

  ContaBancaria(this.cliente);

  void depositar(double valor) => saldo += valor;
  void sacar(double valor) => saldo -= valor;
}

class ContaSalario extends ContaBancaria {
  ContaSalario(super.cliente);
}

class Extrato {
  void imprimir(ContaBancaria conta) => print('Saldo: R\$ \${conta.saldo}');
}