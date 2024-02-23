import 'package:crudfirebase/servicos/autenticacao_servico.dart';
import 'package:flutter/material.dart';

class CadastraUsuario extends StatelessWidget {
  const CadastraUsuario({Key? key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nomeController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController celularController = TextEditingController();
    TextEditingController usuarioController = TextEditingController();
    TextEditingController senhaController = TextEditingController();


    AutenticacaoServico _autenticacaoServico = AutenticacaoServico();
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro de Usuário')),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView(
            shrinkWrap: true,
            children: [
              TextField(decoration: InputDecoration(hintText: 'Nome'), controller: nomeController,),
              TextField(decoration: InputDecoration(hintText: 'Email'), controller: emailController,),
              TextField(decoration: InputDecoration(hintText: 'Celular'), controller: celularController,),
              TextField(decoration: InputDecoration(hintText: 'Usuário'), controller: usuarioController,),
              Row(
                children: [
                  Expanded(
                    child: TextField(decoration: InputDecoration(hintText: 'Senha'), obscureText: true, controller: senhaController,),
                  ),
                  SizedBox(width: 10), 
                  Expanded(
                    child: TextField(decoration: InputDecoration(hintText: 'Confirmar senha'), obscureText: true),
                  ),
                ],
              ),
              SizedBox(height: 30,),

              ElevatedButton(
                onPressed: () {
                  String nome = nomeController.text;
                  String email = emailController.text;
                  String celular = celularController.text;
                  String usuario = usuarioController.text;
                  String senha = senhaController.text;

                  print('Nome: $nome');
                  print('Email: $email');
                  print('Celular: $celular');
                  print('Usuário: $usuario');
                  print('Senha: $senha');

                  _autenticacaoServico.cadastrarUsuario(nome: nome, email: email, celular: celular, usuario: usuario, senha: senha);
                },
                child: Text('Cadastrar'),
              ),
              SizedBox(height: 15,),

              ElevatedButton(
                onPressed: () {
                  print('Cancelar');
                },
                child: Text('Cancelar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
