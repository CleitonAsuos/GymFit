import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gymfit_projeto/alimentacao_page.dart';
import 'package:gymfit_projeto/exercicio_page.dart';
import 'package:gymfit_projeto/login_page.dart';
import 'package:gymfit_projeto/perfil_page.dart';
import 'principal_store.dart';

class PrincipalPage extends StatelessWidget {
  final MainStore store = MainStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Loginpage()),
            )),
        title: Text("GYMFIT"),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo, const Color.fromARGB(255, 0, 5, 55)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Stack(
                children: [
                  Text(
                    textAlign: TextAlign.justify,
                    'Metas',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  Text(
                    textAlign: TextAlign.justify,
                    "Defina suas metas para que possamos montar uma divisão de treino adequada para você.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Stack(
                children: [
                  Text(
                    'Nível de Condicionamento',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Observer(
              builder: (_) => Slider(
                value: store.nivelCondicionamento,
                min: 0,
                max: 2,
                divisions: 2,
                label: store.nivelCondicionamentoLabel,
                onChanged: store.setNivelCondicionamento,
                activeColor: Colors.blueAccent.shade100,
                inactiveColor: Colors.white60,
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Stack(
                children: [
                  Text(
                    'Frequência',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Observer(
              builder: (_) => Slider(
                value: store.frequencia,
                min: 0,
                max: 2,
                divisions: 2,
                label: store.frequenciaLabel,
                onChanged: store.setFrequencia,
                activeColor: Colors.blueAccent.shade100,
                inactiveColor: Colors.white60,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Objetivo',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Observer(
              builder: (_) => Container(
                child: Column(
                  children: [
                  RadioListTile<String>(
                    title: const Text(
                    'Melhorar condicionamento',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    fillColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.selected)) {
                        return Colors.blueAccent.shade100;
                      }
                      return Colors.white60;
                    }),
                    value: 'Melhorar condicionamento',
                    groupValue: store.objetivo,
                    onChanged: (String? value) {
                    store.setObjetivo(value!);
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  RadioListTile<String>(
                    title: const Text(
                    'Ganhar massa muscular',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    fillColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.selected)) {
                        return Colors.blueAccent.shade100;
                      }
                      return Colors.white60;
                    }),
                    value: 'Ganhar massa muscular',
                    groupValue: store.objetivo,
                    onChanged: (String? value) {
                    store.setObjetivo(value!);
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  RadioListTile<String>(
                    title: const Text(
                    'Perder peso',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    fillColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.selected)) {
                        return Colors.blueAccent.shade100;
                      }
                      return Colors.white60;
                    }),
                    value: 'Perder peso',
                    groupValue: store.objetivo,
                    onChanged: (String? value) {
                    store.setObjetivo(value!);
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              width: 200,
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
                onPressed: () {
                  double nivelCondicionamento = store.nivelCondicionamento;
                  double frequencia = store.frequencia;
                  String objetivo = store.objetivo;

                  String divisaoDeTreino = obterDivisaoDeTreino(nivelCondicionamento, frequencia, objetivo);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExercicioPage(
                        nivelCondicionamento: nivelCondicionamento,
                        frequencia: frequencia,
                        objetivo: objetivo,
                        nivelCondicionamentoTexto: store.nivelCondicionamentoLabel,
                        divisaoDeTreino: divisaoDeTreino,
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Continuar',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height:
                  18, //20 coloquei 18 pois estava dando o erro: "bottom overflowed by 1.3 pixels"
            ),
          ],
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
                  nivelCondicionamentoTexto: store.nivelCondicionamentoLabel, divisaoDeTreino: '',
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
// Adicione esta função para obter a divisão de treino com base nas combinações
String obterDivisaoDeTreino(double nivelCondicionamento, double frequencia, String objetivo) {
  // Nível Iniciante
  if (nivelCondicionamento == 0) {
    if (frequencia == 0 && objetivo == 'Melhorar condicionamento') {
      return 'Plano de Treino para Iniciantes\n\nDia 1: Treino de Corpo Inteiro\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nExercícios Principais\nAgachamento com peso corporal: 3 séries de 12 repetições\nFlexão de braço: 3 séries de 10 repetições\nRemada com halteres: 3 séries de 12 repetições\nAbdominais: 3 séries de 15 repetições\nPrancha: 3 séries de 30 segundos\n\nAlongamento (5-10 minutos)\n\nDia 2: Treino de Cardio e Mobilidade\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nCardio\nBicicleta ergométrica: 20-30 minutos em ritmo moderado\n\nMobilidade\nAlongamentos dinâmicos para todo o corpo: 10-15 minutos\n\nDia 3 (Opcional): Treino de Força e Cardio Leve\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nExercícios Principais\nLevantamento terra com halteres: 3 séries de 12 repetições\nPressão de ombro com halteres: 3 séries de 12 repetições\nElevação lateral de halteres: 3 séries de 15 repetições\nAbdominais bicicleta: 3 séries de 20 repetições\n\nCardio Leve\nCaminhada rápida na esteira: 15-20 minutos';
    } else if (frequencia == 1 && objetivo == 'Ganhar massa muscular') {
      return 'Plano de Treino para Iniciantes\n\nDia 1: Treino de Força\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nExercícios Principais\nAgachamento com halteres: 3 séries de 12 repetições\nSupino com halteres: 3 séries de 12 repetições\nRemada curvada com halteres: 3 séries de 12 repetições\nElevação lateral de halteres: 3 séries de 15 repetições\n\nAlongamento (5-10 minutos)\n\nDia 2: Treino de Cardio\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nCardio\nBicicleta ergométrica: 20-30 minutos em ritmo moderado\n\nAlongamento (5-10 minutos)\n\nDia 3: Treino de Força\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nExercícios Principais\nLevantamento terra com halteres: 3 séries de 12 repetições\nPressão de ombro com halteres: 3 séries de 12 repetições\nFlexão de braço: 3 séries de 10 repetições\nAbdominais: 3 séries de 15 repetições\n\nAlongamento (5-10 minutos)';
    } else if (frequencia == 2 && objetivo == 'Perder peso') {
      return 'Plano de Treino para Iniciantes\n\nDia 1: Treino de Cardio\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nCardio\nBicicleta ergométrica: 20-30 minutos em ritmo moderado\n\nAlongamento (5-10 minutos)\n\nDia 2: Treino de Força\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nExercícios Principais\nAgachamento com peso corporal: 3 séries de 12 repetições\nFlexão de braço: 3 séries de 10 repetições\nRemada com halteres: 3 séries de 12 repetições\nAbdominais: 3 séries de 15 repetições\n\nAlongamento (5-10 minutos)\n\nDia 3: Treino de Cardio\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nCardio\nBicicleta ergométrica: 20-30 minutos em ritmo moderado\n\nAlongamento (5-10 minutos)';
    }
  }
  // Nível Intermediário
  else if (nivelCondicionamento == 1) {
    if (frequencia == 0 && objetivo == 'Melhorar condicionamento') {
      return 'Plano de Treino Intermediário\n\nDia 1: Treino de Corpo Inteiro\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nExercícios Principais\nAgachamento com barra: 4 séries de 10 repetições\nSupino reto: 4 séries de 10 repetições\nRemada curvada: 4 séries de 10 repetições\nAbdominais: 4 séries de 15 repetições\nPrancha: 4 séries de 30 segundos\n\nAlongamento (5-10 minutos)\n\nDia 2: Treino de Cardio e Mobilidade\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nCardio\nBicicleta ergométrica: 20-30 minutos em ritmo moderado\n\nMobilidade\nAlongamentos dinâmicos para todo o corpo: 10-15 minutos\n\nDia 3 (Opcional): Treino de Força e Cardio Leve\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nExercícios Principais\nLevantamento terra: 4 séries de 10 repetições\nPressão de ombro: 4 séries de 10 repetições\nElevação lateral: 4 séries de 15 repetições\nAbdominais bicicleta: 4 séries de 20 repetições\n\nCardio Leve\nCaminhada rápida na esteira: 15-20 minutos';
    } else if (frequencia == 1 && objetivo == 'Ganhar massa muscular') {
      return 'Plano de Treino Intermediário\n\nDia 1: Treino de Força\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nExercícios Principais\nAgachamento com barra: 4 séries de 10 repetições\nSupino reto: 4 séries de 10 repetições\nRemada curvada: 4 séries de 10 repetições\nElevação lateral: 4 séries de 15 repetições\n\nAlongamento (5-10 minutos)\n\nDia 2: Treino de Cardio\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nCardio\nBicicleta ergométrica: 20-30 minutos em ritmo moderado\n\nAlongamento (5-10 minutos)\n\nDia 3: Treino de Força\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nExercícios Principais\nLevantamento terra: 4 séries de 10 repetições\nPressão de ombro: 4 séries de 10 repetições\nFlexão de braço: 4 séries de 10 repetições\nAbdominais: 4 séries de 15 repetições\n\nAlongamento (5-10 minutos)';
    } else if (frequencia == 2 && objetivo == 'Perder peso') {
      return 'Plano de Treino Intermediário\n\nDia 1: Treino de Cardio\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nCardio\nBicicleta ergométrica: 20-30 minutos em ritmo moderado\n\nAlongamento (5-10 minutos)\n\nDia 2: Treino de Força\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nExercícios Principais\nAgachamento com barra: 4 séries de 10 repetições\nFlexão de braço: 4 séries de 10 repetições\nRemada curvada: 4 séries de 10 repetições\nAbdominais: 4 séries de 15 repetições\n\nAlongamento (5-10 minutos)\n\nDia 3: Treino de Cardio\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nCardio\nBicicleta ergométrica: 20-30 minutos em ritmo moderado\n\nAlongamento (5-10 minutos)';
    }
  }
  // Nível Avançado
  else if (nivelCondicionamento == 2) {
    if (frequencia == 0 && objetivo == 'Melhorar condicionamento') {
      return 'Plano de Treino Avançado\n\nDia 1: Treino de Corpo Inteiro\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nExercícios Principais\nAgachamento com barra: 5 séries de 8 repetições\nSupino inclinado: 5 séries de 8 repetições\nRemada curvada: 5 séries de 8 repetições\nAbdominais: 5 séries de 15 repetições\nPrancha: 5 séries de 30 segundos\n\nAlongamento (5-10 minutos)\n\nDia 2: Treino de Cardio e Mobilidade\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nCardio\nBicicleta ergométrica: 20-30 minutos em ritmo moderado\n\nMobilidade\nAlongamentos dinâmicos para todo o corpo: 10-15 minutos\n\nDia 3 (Opcional): Treino de Força e Cardio Leve\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nExercícios Principais\nLevantamento terra: 5 séries de 8 repetições\nPressão de ombro: 5 séries de 8 repetições\nElevação lateral: 5 séries de 15 repetições\nAbdominais bicicleta: 5 séries de 20 repetições\n\nCardio Leve\nCaminhada rápida na esteira: 15-20 minutos';
    } else if (frequencia == 1 && objetivo == 'Ganhar massa muscular') {
      return 'Plano de Treino Avançado\n\nDia 1: Treino de Força\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nExercícios Principais\nAgachamento com barra: 5 séries de 8 repetições\nSupino inclinado: 5 séries de 8 repetições\nRemada curvada: 5 séries de 8 repetições\nElevação lateral: 5 séries de 15 repetições\n\nAlongamento (5-10 minutos)\n\nDia 2: Treino de Cardio\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nCardio\nBicicleta ergométrica: 20-30 minutos em ritmo moderado\n\nAlongamento (5-10 minutos)\n\nDia 3: Treino de Força\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nExercícios Principais\nLevantamento terra: 5 séries de 8 repetições\nPressão de ombro: 5 séries de 8 repetições\nFlexão de braço: 5 séries de 10 repetições\nAbdominais: 5 séries de 15 repetições\n\nAlongamento (5-10 minutos)';
    } else if (frequencia == 2 && objetivo == 'Perder peso') {
      return 'Plano de Treino Avançado\n\nDia 1: Treino de Cardio\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nCardio\nBicicleta ergométrica: 20-30 minutos em ritmo moderado\n\nAlongamento (5-10 minutos)\n\nDia 2: Treino de Força\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nExercícios Principais\nAgachamento com barra: 5 séries de 8 repetições\nFlexão de braço: 5 séries de 10 repetições\nRemada curvada: 5 séries de 8 repetições\nAbdominais: 5 séries de 15 repetições\n\nAlongamento (5-10 minutos)\n\nDia 3: Treino de Cardio\nAquecimento (5-10 minutos)\nCaminhada ou corrida leve na esteira\n\nCardio\nBicicleta ergométrica: 20-30 minutos em ritmo moderado\n\nAlongamento (5-10 minutos)';
    }
  }
  return 'Divisão de treino não encontrada para a combinação fornecida.';
}