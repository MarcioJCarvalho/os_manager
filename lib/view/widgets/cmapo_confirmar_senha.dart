import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/utils/validator_utils.dart';

class CampoConfirmarSenha extends StatefulWidget {
  final TextEditingController confirmarSenhaController;
  const CampoConfirmarSenha({Key? key, required TextEditingController controller}) : confirmarSenhaController = controller, super(key: key);

  @override
  State<CampoConfirmarSenha> createState() => _CampoConfirmarSenhaState();
}

class _CampoConfirmarSenhaState extends State<CampoConfirmarSenha> {
  bool hide = true;
  get confirmarSenhaController => null;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: confirmarSenhaController,
      obscureText: hide,
      keyboardType: TextInputType.visiblePassword,
      decoration: const InputDecoration(
        prefixIcon: Icon(LineIcons.key), 
        label: Text('Confirmar:'),
        hintText: 'Confirme sua senha',
        border: OutlineInputBorder(),

      ),
      validator: (value){
        String? erro = ValidatorUtils.isEmpty(value);
        return erro;
      },
    );
  }
}