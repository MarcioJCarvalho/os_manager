class UsuarioDTO{
  final dynamic id;
  final String email;
  final String senha;
  final String nome;

  UsuarioDTO({
    this.id,
    required this.email,
    required this.senha,
    required this.nome,
  });

  @override
  String toString(){
    return '''
      $id,
      $email,
      $senha,
      $nome,
  ''';
  }

  static toDTO(Map<dynamic, dynamic> cliente){
    return UsuarioDTO(
      id: cliente['id'],
      nome: cliente['nome'], 
      email: cliente['email'], 
      senha: cliente['senha'], 
    ); 
  }

}