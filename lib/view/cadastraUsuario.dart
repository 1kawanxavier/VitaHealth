import 'package:crudfirebase/database/db.dart';
import 'package:flutter/material.dart';

class CadastraUsuario extends StatelessWidget {
  const CadastraUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nomeController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController celularController = TextEditingController();
    TextEditingController usuarioController = TextEditingController();
    TextEditingController senhaController = TextEditingController();

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
                onPressed: () async {
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

                  // Obtendo a instância do banco de dados
                  final database = await DB.instance.database;

                  // Inserindo os dados na tabela perfil
                  await database!.insert('perfil', {
                    'nome': nome,
                    'email': email,
                    'celular': celular,
                    'usuario': usuario,
                    'senha': senha,
                    'acesso': 0
                  });

                  print('Usuário cadastrado com sucesso.');

                  // Limpar os campos após cadastrar
                  nomeController.clear();
                  emailController.clear();
                  celularController.clear();
                  usuarioController.clear();
                  senhaController.clear();
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
