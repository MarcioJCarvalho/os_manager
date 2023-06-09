class ClienteDTO{
  final dynamic id;
  final String nome;
  final String email;
  final String telefone;
  final String endereco;

  ClienteDTO({
    this.id,
    required this.nome,
    required this.email,
    required this.telefone,
    required this.endereco
  });

  @override
  String toString() {
    return ''' 
      $id,
      $nome,
      $email,
      $telefone,
      $endereco
    ''';
  }

  static toDTO(Map<dynamic, dynamic> cliente){
    return ClienteDTO(
      nome: cliente['nome'], 
      email: cliente['email'], 
      telefone: cliente['telefone'], 
      endereco: cliente['endereco'],
    ); 
  }
}