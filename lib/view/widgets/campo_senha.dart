import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/utils/validator_utils.dart';

class CampoSenha extends StatefulWidget {
  final TextEditingController senhaController;
  const CampoSenha({Key? key, required TextEditingController controller})
      : senhaController = controller,
        super(key: key);

  @override
  State<CampoSenha> createState() => _CampoSenhaState();
}

class _CampoSenhaState extends State<CampoSenha> {
  bool hide = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.senhaController,
      obscureText: hide,
      keyboardType: TextInputType.visiblePassword,
      style: const TextStyle(fontSize: 18),
      decoration: InputDecoration(
        prefixIcon: const Icon(LineIcons.key),
        label: const Text('Senha:'),
        hintText: "Sua senha",
        border: const OutlineInputBorder(),
        suffixIcon: GestureDetector(
          onTap: () {
            hide = !hide;
            setState(() {});
          },
          child: Icon(hide ? LineIcons.eyeSlash : LineIcons.eye,
              color: Colors.grey),
        ),
      ),
      validator: (value) {
        String? erro = ValidatorUtils.isEmpty(value);
        return erro;
      },
    );
  }
}
