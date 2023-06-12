class LoginDTO{
  final String email;
  final String senha;

  LoginDTO({required this.email, required this.senha});

  @override
  String toString() {
    return '''
      $email
      $senha
    ''';
  }
}