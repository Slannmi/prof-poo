abstract class CanalDeNotificacao {
  void enviar(String mensagem);
}

class NotificacaoEmail implements CanalDeNotificacao {
  @override
  void enviar(String mensagem) => print('Email: \$mensagem');
}

class Notificador {
  final CanalDeNotificacao canal;
  Notificador(this.canal);

  void notificar(String msg) => canal.enviar(msg);
}