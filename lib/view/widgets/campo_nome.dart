import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/utils/validator_utils.dart';

class CampoNome extends StatelessWidget {
  final TextEditingController nomeController;
  const CampoNome({Key? key, required TextEditingController controller}) : nomeController = controller, super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: nomeController,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration( 
        label: Text('Nome:'),
        hintText: 'Seu nome',
        border: OutlineInputBorder(),
        prefixIcon: Icon(LineIcons.user),

      ),
      validator: (value){
        var erro = ValidatorUtils.isEmpty(value) ?? ValidatorUtils.email(value);
        return erro;
      });
  }
}