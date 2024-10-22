import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'cadastro_store.dart';

class CadastroPage extends StatelessWidget {
  final CadastroStore store = CadastroStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey, Colors.black87],
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
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
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
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Observer(
              builder: (_) => TextField(
                onChanged: store.setSexo,
                decoration: InputDecoration(
                  labelText: 'Sexo',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Observer(
              builder: (_) => TextField(
                onChanged: (value) => store.setPeso(double.parse(value)),
                decoration: InputDecoration(
                  labelText: 'Peso',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
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
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
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
                  RadioListTile(
                    title: Text(
                      'Melhorar o condicionamento',
                      style: TextStyle(color: Colors.white),
                    ),
                    value: 'Melhorar o condicionamento',
                    groupValue: store.objetivo,
                    onChanged: store.setObjetivo,
                  ),
                  RadioListTile(
                    title: Text(
                      'Ganhar massa muscular',
                      style: TextStyle(color: Colors.white),
                    ),
                    value: 'Ganhar massa muscular',
                    groupValue: store.objetivo,
                    onChanged: store.setObjetivo,
                  ),
                  RadioListTile(
                    title: Text(
                      'Perder peso',
                      style: TextStyle(color: Colors.white),
                    ),
                    value: 'Perder peso',
                    groupValue: store.objetivo,
                    onChanged: store.setObjetivo,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Observer(
              builder: (_) => TextField(
                onChanged: store.setEmail,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Observer(
              builder: (_) => TextField(
                onChanged: store.setSenha,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
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
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                obscureText: true,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Adicione a lógica de cadastro aqui
              },
              child: Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}