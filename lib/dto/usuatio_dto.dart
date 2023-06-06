class UsuarioDTO{
  final dynamic id;
  final String email;
  final String senha;

  UsuarioDTO({
    this.id,
    required this.email,
    required this.senha
  });

  @override
  String toString(){
    return '''
      $id,
      $email,
      $senha
  ''';
  }
}