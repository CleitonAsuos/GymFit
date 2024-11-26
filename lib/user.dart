import 'package:flutter/material.dart';
import 'database_helper.dart';

class User {
  final int? id;
  final String nome;
  final int idade;
  final String sexo;
  final double peso;
  final double altura;
  final String objetivo;
  final String username; // Email
  final String password;
  final String nivelCondicionamento;
  final int frequencia; // Add this line

  User({
    this.id,
    required this.nome,
    required this.idade,
    required this.sexo,
    required this.peso,
    required this.altura,
    required this.objetivo,
    required this.username,
    required this.password,
    required this.nivelCondicionamento,
    required this.frequencia, // Add this line
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'idade': idade,
      'sexo': sexo,
      'peso': peso,
      'altura': altura,
      'objetivo': objetivo,
      'username': username,
      'password': password,
      'nivelCondicionamento': nivelCondicionamento,
      'frequencia': frequencia, // Add this line
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      nome: map['nome'] ?? '',
      idade: map['idade'] ?? 0,
      sexo: map['sexo'] ?? '',
      peso: map['peso'] ?? 0.0,
      altura: map['altura'] ?? 0.0,
      objetivo: map['objetivo'] ?? '',
      username: map['username'] ?? '',
      password: map['password'] ?? '',
      nivelCondicionamento: map['nivelCondicionamento'] ?? '',
      frequencia: map['frequencia'] ?? 0, // Add this line
    );
  }
}

final _dbHelper = DatabaseHelper.instance;

class UserDataLoader extends StatefulWidget {
  @override
  _UserDataLoaderState createState() => _UserDataLoaderState();
}

class _UserDataLoaderState extends State<UserDataLoader> {
  User? _user;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  void _loadUserData() async {
    List<Map<String, dynamic>> users = await _dbHelper.getUsers();
    if (users.isNotEmpty) {
      setState(() {
        _user = User.fromMap(users.first);
      });
    } else {
      setState(() {
        _user = User(
          nome: '',
          idade: 0,
          sexo: '',
          peso: 0.0,
          altura: 0.0,
          objetivo: '',
          username: '',
          password: '',
          nivelCondicionamento: '',
          frequencia: 0, // Add this line
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Data Loader'),
      ),
      body: _user == null
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: ${_user!.nome}'),
                  Text('Age: ${_user!.idade}'),
                  Text('Sex: ${_user!.sexo}'),
                  Text('Weight: ${_user!.peso} kg'),
                  Text('Height: ${_user!.altura} m'),
                  Text('Goal: ${_user!.objetivo}'),
                  Text('Username: ${_user!.username}'),
                ],
              ),
            ),
    );
  }
}