import 'package:flutter/material.dart';

class usuarioField extends StatelessWidget {
  const usuarioField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: "Usuário"),
      );
  }
}