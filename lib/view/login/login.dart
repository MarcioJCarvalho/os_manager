import 'package:flutter/material.dart';
import 'package:os_manager/datebase/sqlite/dao/usuario_dao_impl.dart';
import 'package:os_manager/dto/usuatio_dto.dart';
import 'package:os_manager/interface/usuario_interface.dart';
import 'package:os_manager/utils/rotas.dart';
import 'package:os_manager/view/widgets/botao.dart';
import 'package:os_manager/view/widgets/campo_email.dart';
import 'package:os_manager/view/widgets/campo_senha.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final campoEmail = CampoEmail(controller: TextEditingController());
  final campoSenha = CampoSenha(controller: TextEditingController());
  final formKey = GlobalKey<FormState>();
  final UsuarioInterface usuarioDAOImpl = UsuarioDAOImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                campoEmail,
                const SizedBox(height: 25),
                campoSenha,
                const SizedBox(height: 25),
                botao(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget botao(BuildContext context) {
    return Botao(
      context: context,
      nome: 'Entrar',
      acao: () async {
        var formState = formKey.currentState;
        if (formState != null && formState.validate()) {
          UsuarioDTO usuarioDTO = await usuarioDAOImpl.auth(
              campoEmail.emailController.text, campoSenha.senhaController.text);
          Navigator.pushNamed(context, Rotas.HOME, arguments: usuarioDTO);
        }
      },
    );
  }
}
