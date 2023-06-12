import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/utils/validator_utils.dart';

class CampoEmail extends StatelessWidget {
  final TextEditingController emailController;
  const CampoEmail({Key? key, required TextEditingController controller}) : emailController = controller, super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(fontSize: 18),
      decoration: const InputDecoration( 
        label: Text('E-mail:'),
        hintText: 'exemplo@email.com',
        border: OutlineInputBorder(),
        prefixIcon: Icon(LineIcons.envelope),

      ),
      validator: (value){
        var erro = ValidatorUtils.isEmpty(value) ?? ValidatorUtils.email(value);
        return erro;
      },
    );
  }
}