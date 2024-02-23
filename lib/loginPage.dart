import 'package:crudfirebase/widgets/LoginButton.dart';
import 'package:flutter/material.dart';
import 'package:crudfirebase/servicos/autenticacao_servico.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final AutenticacaoServico _autenticacaoServico = AutenticacaoServico();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return Center(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(12),
        children: [
          Text('Login'),
          TextField(
            decoration: InputDecoration(hintText: "Usuário"),
            controller: usuarioController,
          ),
          TextField(
            decoration: InputDecoration(hintText: "Senha"),
            obscureText: true,
            controller: senhaController,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              String usuario = usuarioController.text;
              String senha = senhaController.text; 
              print(usuario);
              print(senha);
              String? error = await _autenticacaoServico.logarUsuario(email: usuario, senha: senha);
              if(error == null) {
                print('Logado com sucesso');
              } else {
                print('Deu ruim ');
              }
            },
            child: Text('Acessar'),
          ),
          SizedBox(height: 20),
          ButtonCriar(),
        ],
      ),
    );
  }
}
