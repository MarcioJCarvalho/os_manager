class ValidatorUtils{
  static String? email(String? value) {
    if(!value!.contains('@')){
      return 'E-mail deve conter "@"';
    }
    return null;
  }
  
  static String? isEmpty(String? value) {
    if(value == null || value.isEmpty){
      return 'O campo é obrigatório';
    }
    return null;
  }
}