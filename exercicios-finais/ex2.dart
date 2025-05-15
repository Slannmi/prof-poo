abstract class Exportador {
  void exportar(String dados);
}

class ExportadorCSV implements Exportador {
  @override
  void exportar(String dados) => print('Exportando CSV: \$dados');
}

class Relatorio {
  final Exportador exportador;

  Relatorio(this.exportador);

  void gerar() {
    exportador.exportar('Relatório de Vendas');
  }
}