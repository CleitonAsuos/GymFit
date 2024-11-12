import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'exercicio_store.dart';

class ExercicioPage extends StatelessWidget {
  final double nivelCondicionamento;
  final double frequencia;
  final String objetivo;

  const ExercicioPage({
    Key? key,
    required this.nivelCondicionamento,
    required this.frequencia,
    required this.objetivo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Determinar o nível de condicionamento
    String nivelCondicionamentoTexto;
    switch (nivelCondicionamento.toInt()) {
      case 0:
        nivelCondicionamentoTexto = 'Iniciante';
        break;
      case 1:
        nivelCondicionamentoTexto = 'Intermediário';
        break;
      case 2:
        nivelCondicionamentoTexto = 'Avançado';
        break;
      default:
        nivelCondicionamentoTexto = 'Desconhecido';
    }

    // Determinar a frequência
    String frequenciaTexto;
    switch (frequencia.toInt()) {
      case 0:
        frequenciaTexto = '2 a 3 vezes';
        break;
      case 1:
        frequenciaTexto = '3 a 5 vezes';
        break;
      case 2:
        frequenciaTexto = '5 a 7 vezes';
        break;
      default:
        frequenciaTexto = 'Desconhecido';
    }

    // Combinação dos valores
    String combinacao = 'Treino: $objetivo\n'
        'Nível de Condicionamento: $nivelCondicionamentoTexto\n'
        'Frequência: $frequenciaTexto';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pop(context, false),
        ),
        title: const Text("Exercícios"),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey, Colors.black87],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                combinacao,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(height: 20),
              // Conteúdo adicional da página
              Center(
                child: Text(
                  'Lista de exercícios',
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
