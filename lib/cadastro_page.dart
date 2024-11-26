import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'cadastro_store.dart';
import 'database_helper.dart';
import 'user.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'cadastro_store.dart';
import 'database_helper.dart';
import 'user.dart';

class CadastroPage extends StatelessWidget {
  final CadastroStore store = CadastroStore();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final DatabaseHelper _dbHelper = DatabaseHelper.instance;

  void _register(BuildContext context) async {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username.isNotEmpty && password.isNotEmpty) {
      User newUser = User(
        nome: store.nome,
        idade: store.idade,
        sexo: store.sexo,
        peso: store.peso,
        altura: store.altura,
        objetivo: store.objetivo,
        username: username,
        password: password,
        frequencia: 0,
        nivelCondicionamento: '',
      );
      await _dbHelper.insertUser(newUser.toMap());

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Usuário cadastrado com sucesso!')),
      );

      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Por favor, preencha todos os campos')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Cadastro'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pop(context, false),
        ),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo, const Color.fromARGB(255, 0, 5, 55)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: [
            Observer(
              builder: (_) => TextField(
                onChanged: store.setNome,
                decoration: InputDecoration(
                  labelText: 'Nome',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent.shade100),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Observer(
              builder: (_) => TextField(
                onChanged: (value) => store.setIdade(int.parse(value)),
                decoration: InputDecoration(
                  labelText: 'Idade',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent.shade100),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Observer(
              builder: (_) => Column(
                children: [
                  RadioListTile<String>(
                    title: const Text(
                      'Masculino',
                      style: TextStyle(color: Colors.white),
                    ),
                    fillColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return Colors.blueAccent.shade100;
                      }
                      return Colors.white60;
                    }),
                    value: 'Masculino',
                    groupValue: store.sexo,
                    onChanged: store.setSexo,
                    activeColor: Colors.white,
                  ),
                  RadioListTile<String>(
                    title: const Text(
                      'Feminino',
                      style: TextStyle(color: Colors.white),
                    ),
                    fillColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return Colors.blueAccent.shade100;
                      }
                      return Colors.white60;
                    }),
                    value: 'Feminino',
                    groupValue: store.sexo,
                    onChanged: store.setSexo,
                    
                    activeColor: Colors.white,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Observer(
              builder: (_) => TextField(
                onChanged: (value) => store.setPeso(double.parse(value)),
                decoration: InputDecoration(
                  labelText: 'Peso',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent.shade100),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Observer(
              builder: (_) => TextField(
                onChanged: (value) => store.setAltura(double.parse(value)),
                decoration: InputDecoration(
                  labelText: 'Altura',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent.shade100),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Observer(
              builder: (_) => TextField(
                controller: _usernameController,
                onChanged: store.setEmail,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent.shade100),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Observer(
              builder: (_) => TextField(
                controller: _passwordController,
                onChanged: store.setSenha,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent.shade100),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
                obscureText: true,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Observer(
              builder: (_) => TextField(
                onChanged: store.setConfirmacaoSenha,
                decoration: InputDecoration(
                  labelText: 'Confirmação da Senha',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent.shade100),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
                obscureText: true,
                style: TextStyle(color: Colors.white),
              ),
            ),

            SizedBox(height: 61),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.grey, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () => _register(context),
                child: const Text(
                  'Cadastrar',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
