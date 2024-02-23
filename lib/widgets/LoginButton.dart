import 'package:crudfirebase/view/cadastraUsuario.dart';
import 'package:flutter/material.dart';


class ButtonCriar extends StatelessWidget {
  const ButtonCriar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  CadastraUsuario()), 
        );
      },
      child: Text('Cadastre-se'),
    );
  }
}