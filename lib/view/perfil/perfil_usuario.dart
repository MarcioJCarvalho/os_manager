import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:line_icons/line_icons.dart';
import 'package:os_manager/dto/usuatio_dto.dart';

class PerfilUsuario extends StatefulWidget {
  const PerfilUsuario({Key? key}) : super(key: key);

  @override
  State<PerfilUsuario> createState() => _PerfilUsuarioState();
}

class _PerfilUsuarioState extends State<PerfilUsuario> {
  ImagePicker imagePicker = ImagePicker();
  XFile? imagemSelecionada;

  @override
  Widget build(BuildContext context) {
    late UsuarioDTO usuarioDTO =
        ModalRoute.of(context)!.settings.arguments as UsuarioDTO;
    late String urlPadrao = "";
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(LineIcons.angleLeft)),
          title: const Text('Perfil do Usuário'),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 35),
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(usuarioDTO.urlPerfil ?? urlPadrao),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CircleAvatar(
                      radius: 19,
                      backgroundColor: const Color.fromARGB(174, 255, 255, 255),
                      child: IconButton(
                          onPressed: () {
                            abrirButtonSheet(context);
                          },
                          icon: const Icon(
                            LineIcons.camera,
                            color: Colors.black,
                          )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Future abrirButtonSheet(BuildContext context){
    return showModalBottomSheet(
      context: context, 
      builder: (context) =>  SizedBox(
        height: 80,
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const Center(
                child: Text('Foto do perfil', style: TextStyle(fontSize: 
                20),
                )
              ),
        
              Row(
                children: [
                  CircleAvatar(
                    child: IconButton(
                      onPressed: () {
                        pegarImagemCamera();
                      },
                      icon: const Icon(LineIcons.camera),
                    ),
                  ),
                  const SizedBox(width: 20),
                  CircleAvatar(
                    child: IconButton(
                      onPressed: () {
                        pegarImagemGaleria();
                      },
                      icon: const Icon(LineIcons.images),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }

  pegarImagemCamera() async {
    final XFile? imagemTemporaria = await imagePicker.pickImage(source: ImageSource.camera);
    if(imagemTemporaria != null){
      setState(() {
        imagemSelecionada = imagemTemporaria;
      });
    }
  }

  pegarImagemGaleria() async {
    final XFile? imagemTemporaria = await imagePicker.pickImage(source: ImageSource.gallery);
    if(imagemTemporaria != null){
      setState(() {
        imagemSelecionada = imagemTemporaria;
      });
    }
  }

}
