class ProvedorDTO {
  dynamic id;
  String nome;
  String telefone;

  ProvedorDTO({this.id, required this.nome, required this.telefone});

  String toString() {
    return '''
      $id
      $nome
      $telefone
    ''';
  }

  static Future<ProvedorDTO> toDTO(Map<dynamic, dynamic> provedor) async {
    return ProvedorDTO(
      id: provedor['id'],
      nome: provedor['nome'],
      telefone: provedor['telefone'],
    );
  }
}
