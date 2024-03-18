import 'package:flutter/material.dart';
import 'package:crudfirebase/database/db.dart'; 
class LoginPage extends StatelessWidget {
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

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

              // Verifica as credenciais no banco de dados SQLite
              bool loginValido = await _verificarCredenciais(usuario, senha);
              if(loginValido) {
                print('Login realizado com sucesso');
              } else {
                print('Usuário ou senha inválidos');
              }
            },
            child: Text('Acessar'),
          ),
        ],
      ),
    );
  }

  Future<bool> _verificarCredenciais(String usuario, String senha) async {
    // Obtenha a instância do banco de dados
    final database = await DB.instance.database;

    // Realize a consulta para verificar se as credenciais estão corretas
    List<Map<String, dynamic>> result = await database!.query('perfil',
        where: 'usuario = ? AND senha = ?', whereArgs: [usuario, senha]);

    // Se houver algum resultado, significa que as credenciais estão corretas
    return result.isNotEmpty;
  }
}
