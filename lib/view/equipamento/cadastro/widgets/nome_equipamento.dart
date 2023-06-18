import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/utils/validator_utils.dart';

class NomeEquipamento extends StatelessWidget {
  final TextEditingController nomeEquipamentoController;
  const NomeEquipamento({Key? key, required TextEditingController controller}) : 
  nomeEquipamentoController = controller, super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: nomeEquipamentoController,
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
        label: Text('Nome:'),
        hintText: 'Nome do equipamento',
        border: OutlineInputBorder(),
        prefixIcon: Icon(LineIcons.tools),
      ),
      validator: (value){
        var erro = ValidatorUtils.isEmpty(value);
        return erro;
      }
    );
  }
}