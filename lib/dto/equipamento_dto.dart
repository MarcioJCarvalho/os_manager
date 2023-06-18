class EquipamentoDTO {
  final dynamic id;
  final String nome;

  EquipamentoDTO({
    this.id
    ,required this.nome
  });

  @override
  String toString() {
    return '''
      $id
      $nome
    ''';
  }

  static Future<EquipamentoDTO> toDTO(Map<dynamic, dynamic> equipamento) async {
    return EquipamentoDTO(
      id: equipamento['id'],
      nome: equipamento['nome'],
    );
  }
}