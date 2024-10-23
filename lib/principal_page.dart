import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'principal_store.dart';

class MainPage extends StatelessWidget {
  final MainStore store = MainStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GYMFIT'),
        backgroundColor: Colors.transparent,
        elevation: 0,
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
                  // Texto com borda preta
                  Text(
                    'Metas',
                    style: TextStyle(
                      fontSize: 18,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1
                        ..color = Colors.black,
                    ),
                  ),
                  // Texto amarelo sobreposto
                  Text(
                    'Metas',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Stack(
                children: [
                  // Texto com borda preta
                  Text(
                    'Nível de Condicionamento',
                    style: TextStyle(
                      fontSize: 18,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1
                        ..color = Colors.black,
                    ),
                  ),
                  // Texto amarelo sobreposto
                  Text(
                    'Nível de Condicionamento',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.yellow,
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
                activeColor: Colors.yellow,
                inactiveColor: Colors.yellow[100],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Stack(
                children: [
                  // Texto com borda preta
                  Text(
                    'Frequência',
                    style: TextStyle(
                      fontSize: 18,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1
                        ..color = Colors.black,
                    ),
                  ),
                  // Texto amarelo sobreposto
                  Text(
                    'Frequência',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.yellow,
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
                activeColor: Colors.yellow,
                inactiveColor: Colors.yellow[100],
              ),
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
                  color: Colors.yellow,
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
                  color: Colors.yellow,
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
                  color: Colors.black,
                ),
                Icon(
                  Icons.person,
                  size: 24,
                  color: Colors.yellow,
                ),
              ],
            ),
            label: 'Perfil',
          ),
        ],
        selectedItemColor: Colors.yellow,
       unselectedItemColor: Colors.yellow,
        backgroundColor: Colors.black,
        selectedLabelStyle: TextStyle(
          color: Colors.white,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}