import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gymfit_projeto/alimentacao_page.dart';
import 'package:gymfit_projeto/perfil_page.dart';
import 'exercicio_store.dart';

class ExercicioPage extends StatelessWidget {
  final double nivelCondicionamento;
  final double frequencia;
  final String objetivo;
  final String divisaoDeTreino;

  final ExercicioStore store = ExercicioStore();

  ExercicioPage({
    Key? key,
    required this.nivelCondicionamento,
    required this.frequencia,
    required this.objetivo,
    required String nivelCondicionamentoTexto,
    required this.divisaoDeTreino,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pop(context, false),
        ),
        title: const Text("Divisão de Treino"),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo, Color.fromARGB(255, 0, 5, 55)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  divisaoDeTreino,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(height: 20),
                // Conteúdo adicional da página
              ],
            ),
          ),
        ),
      ),
    );
  }
}