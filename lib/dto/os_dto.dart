class OSDTO {
  final dynamic id;
  final String nomeCliente;
  final String telefoneCliente;
  final String emailCliente;
  final String enderecoCliente;

  OSDTO(
      {this.id,
      required this.nomeCliente,
      required this.telefoneCliente,
      required this.emailCliente,
      required this.enderecoCliente});

  @override
  String toString() {
    return '''
      $id
      $nomeCliente
      $telefoneCliente
      $emailCliente
      $enderecoCliente
    ''';
  }
}
