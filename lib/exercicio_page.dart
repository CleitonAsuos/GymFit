import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gymfit_projeto/alimentacao_page.dart';
import 'package:gymfit_projeto/perfil_page.dart';
import 'exercicio_store.dart';

class ExercicioPage extends StatelessWidget {
  final double nivelCondicionamento;
  final double frequencia;
  final String objetivo;

  final ExercicioStore store = ExercicioStore();

  ExercicioPage({
    Key? key,
    required this.nivelCondicionamento,
    required this.frequencia,
    required this.objetivo,
    required String nivelCondicionamentoTexto,
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
        title: const Text("Divisão de Treino"),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo, const Color.fromARGB(255, 0, 5, 55)],
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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Exercício',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Alimentação',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExercicioPage(
                  nivelCondicionamento: store.nivelCondicionamento,
                  frequencia: store.frequencia,
                  objetivo: store.objetivo,
                  nivelCondicionamentoTexto: nivelCondicionamentoTexto,
                ),
              ),
            );
          } else if (index == 1) {
            if (store.objetivo.isNotEmpty) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AlimentacaoPage(objetivo: store.objetivo),
                ),
              );
            } else {
              // Mostrar uma mensagem de erro ou alerta
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                      'Por favor, selecione um objetivo antes de continuar.',
                      textAlign: TextAlign.center,
                      style: 
                      TextStyle(
                        color: Colors.red,
                        )
                      ),
                  backgroundColor: Colors.transparent,
                ),
              );
            } 
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PerfilPage(
                  nome: 'Nome Exemplo',
                  idade: 25,
                  sexo: 'Masculino',
                  peso: 70.0,
                  altura: 1.75,
                  objetivo: store.objetivo,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
