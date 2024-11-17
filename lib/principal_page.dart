import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gymfit_projeto/alimentacao_page.dart';
import 'package:gymfit_projeto/exercicio_page.dart';
import 'principal_store.dart';

class MainPage extends StatelessWidget {
  final MainStore store = MainStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pop(context, false),
        ),
        title: Text("GYMFIT"),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey, Colors.black87],
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
                activeColor: Colors.black,
                inactiveColor: Colors.white54,
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
                activeColor: Colors.black,
                inactiveColor: Colors.white54,
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
              builder: (_) => Theme(
                data: Theme.of(context).copyWith(
                  unselectedWidgetColor: Colors.white,
                ),
                child: Column(
                  children: [
                    CheckboxListTile(
                      side: BorderSide(
                        color: Colors.white30,
                        width: 2,
                      ),
                      title: const Text(
                        'Melhorar condicionamento',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      value:
                          store.objetivo.contains('Melhorar condicionamento'),
                      onChanged: (bool? value) {
                        store.setObjetivo(
                          'Melhorar condicionamento',
                        );
                      },
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                      controlAffinity: ListTileControlAffinity
                          .leading, // Checkbox à esquerda
                    ),
                    CheckboxListTile(
                      side: BorderSide(
                        color: Colors.white30,
                        width: 2,
                      ),
                      title: const Text(
                        'Ganhar massa muscular',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      value: store.objetivo.contains('Ganhar massa muscular'),
                      onChanged: (bool? value) {
                        store.setObjetivo(
                          'Ganhar massa muscular',
                        );
                      },
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                      controlAffinity: ListTileControlAffinity
                          .leading, // Checkbox à esquerda
                    ),
                    CheckboxListTile(
                      side: BorderSide(
                        color: Colors.white30,
                        width: 2,
                      ),
                      title: const Text(
                        'Perder peso',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      value: store.objetivo.contains('Perder peso'),
                      onChanged: (bool? value) {
                        store.setObjetivo(
                          'Perder peso',
                        );
                      },
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                      controlAffinity: ListTileControlAffinity
                          .leading, // Checkbox à esquerda
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
                  // Acessar os valores dos sliders e checkboxes
                  double nivelCondicionamento = store.nivelCondicionamento;
                  double frequencia = store.frequencia;
                  String objetivo = store.objetivo;

                  // Navegar para a ExercicioPage passando os valores
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExercicioPage(
                        nivelCondicionamento: nivelCondicionamento,
                        frequencia: frequencia,
                        objetivo: objetivo,
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
        items: [
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Icon(
                  Icons.fitness_center,
                  size: 24,
                  color: Colors.black,
                ),
                Icon(
                  Icons.fitness_center,
                  size: 24,
                  color: Colors.white,
                ),
              ],
            ),
            label: 'Exercício',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Icon(
                  Icons.restaurant,
                  size: 24,
                  color: Colors.black,
                ),
                Icon(
                  Icons.restaurant,
                  size: 24,
                  color: Colors.white,
                ),
              ],
            ),
            label: 'Alimentação',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Icon(
                  Icons.person,
                  size: 24,
                  color: Colors.white,
                ),
                Icon(
                  Icons.person,
                  size: 24,
                  color: Colors.white,
                ),
              ],
            ),
            label: 'Perfil',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        selectedLabelStyle: const TextStyle(
          color: Colors.white,
        ),
        unselectedLabelStyle: const TextStyle(
          color: Colors.white,
        ),
        onTap: (index) {
          if (index == 1) {
            if (store.objetivo.isNotEmpty) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      AlimentacaoPage(objetivo: store.objetivo),
                ),
              );
            } else {
              // Mostrar uma mensagem de erro ou alerta
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                      'Por favor, selecione um objetivo antes de continuar.'),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
