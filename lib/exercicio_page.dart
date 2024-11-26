import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gymfit_projeto/alimentacao_page.dart';
import 'package:gymfit_projeto/perfil_page.dart';
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
    required String nivelCondicionamentoTexto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String combinacao = '';

    if (objetivo == 'Melhorar condicionamento') {
      if (nivelCondicionamento == 0) {
        if (frequencia == 0) {
          combinacao =
              'DIA 1 - Corpo Inteiro Leg Press\n\nSupino Máquina (Peitoral): 3 séries de 12-15 repetições.\nPuxada Frontal (Costas): 3 séries de 12-15 repetições.\nRosca Scott (Bíceps, Máquina ou Banco): 3 séries de 12-15 repetições.\nTríceps Corda (Cabo): 3 séries de 12-15 repetições.\nPrancha Isométrica (Core): 3 séries de 15-30 segundos.\n \n DIA 2 - Foco em Membros Inferiores \n\n Agachamento Livre (com halteres): 3 séries de 12-15 repetições.\n Cadeira Extensora (Quadríceps): 3 séries de 12-15 repetições.\n Mesa Flexora (Posteriores da coxa): 3 séries de 12-15 repetições.\n Elevação de Panturrilha (Máquina): 3 séries de 15-20 repetições.\n Abdominais no Colchonete (tradicional ou infra): 3 séries de 15 repetições.\n\nDIA 3 - Foco em Membros Superiores (opcional)\n\nSupino Inclinado Máquina: 3 séries de 12-15 repetições.\nRemada Máquina (Costas): 3 séries de 12-15 repetições.\nDesenvolvimento de Ombros (Máquina): 3 séries de 12-15 repetições.\nRosca Alternada com Halteres (Bíceps): 3 séries de 12 repetições (cada braço).\nTríceps Testa (com barra EZ): 3 séries de 12 repetições.\nAbdominal na Máquina: 3 séries de 15 repetições.';
        } else if (frequencia == 1) {
          combinacao =
              'DIA 1 - Corpo Inteiro\n Agachamento Livre com Halteres: 3 séries de 12-15 repetiçõesSupino Máquina (Peitoral): 3 séries de 12-15 repetiçõesPuxada Frontal (Costas): 3 séries de 12-15 repetiçõesRosca Direta com Halteres (Bíceps): 3 séries de 12 repetiçõesTríceps no Pulley com Corda: 3 séries de 12 repetiçõesPrancha Isométrica (Core): 3 séries de 20-30 segundos.\n\nDIA 2 - Membros Superiores\nDesenvolvimento de Ombros Máquina: 3 séries de 12-15 repetições.\nRemada Baixa no Cabo: 3 séries de 12-15 repetições.\nSupino Inclinado Máquina: 3 séries de 12-15 repetições.\nRosca Alternada com Halteres (Bíceps): 3 séries de 12 repetições.\nTríceps Francês com Halteres: 3 séries de 12 repetições.\nAbdominais na Máquina: 3 séries de 15 repetições.\n\nDIA 3 - Membros Inferiores\nLeg Press: 3 séries de 12-15 repetições.\nCadeira Extensora (Quadríceps): 3 séries de 12-15 repetições.\nMesa Flexora (Posteriores da coxa): 3 séries de 12-15 repetições.\nAvanço com Halteres: 3 séries de 12 passos por perna.\nElevação de Panturrilha Máquina: 3 séries de 15-20 repetições.\nPrancha Lateral (Core): 3 séries de 15-20 segundos de cada lado.\n\nDIA 4 - Corpo Inteiro (Opcional)\nAgachamento Livre com Halteres: 3 séries de 12 repetições.Puxada Frontal: 3 séries de 12-15 repetições.Desenvolvimento de Ombros Máquina: 3 séries de 12-15 repetições.Supino Máquina: 3 séries de 12 repetições.Abdominais no Colchonete: 3 séries de 15 repetições.';
        } else {
          combinacao =
              'DIA 1 - Corpo Inteiro Leg Press\nSupino Máquina (Peitoral): 3 séries de 12-15 repetições.\nPuxada Frontal (Costas): 3 séries de 12-15 repetições.\nRosca Scott (Bíceps, Máquina ou Banco): 3 séries de 12-15 repetições.\nTríceps Corda (Cabo): 3 séries de 12-15 repetições.\nPrancha Isométrica (Core): 3 séries de 15-30 segundos.\n\n DIA 2 - Foco em Membros Inferiores\n Agachamento Livre (com halteres): 3 séries de 12-15 repetições.\n Cadeira Extensora (Quadríceps): 3 séries de 12-15 repetições.\n Mesa Flexora (Posteriores da coxa): 3 séries de 12-15 repetições.\n Elevação de Panturrilha (Máquina): 3 séries de 15-20 repetições.\n Abdominais no Colchonete (tradicional ou infra): 3 séries de 15 repetições.\n\nDIA 3 - Foco em Membros Superiores\nSupino Inclinado Máquina: 3 séries de 12-15 repetições.\nRemada Máquina (Costas): 3 séries de 12-15 repetições.\nDesenvolvimento de Ombros (Máquina): 3 séries de 12-15 repetições.\nRosca Alternada com Halteres (Bíceps): 3 séries de 12 repetições (cada braço).\nTríceps Testa (com barra EZ): 3 séries de 12 repetições.\nAbdominal na Máquina: 3 séries de 15 repetições.\n\nDIA 4 - Corpo Inteiro (Opcional)\nAgachamento Livre com Halteres: 3 séries de 12 repetições.Puxada Frontal: 3 séries de 12-15 repetições.Desenvolvimento de Ombros Máquina: 3 séries de 12-15 repetições.Supino Máquina: 3 séries de 12 repetições.Abdominais no Colchonete: 3 séries de 15 repetições.';
        }
      } else if (nivelCondicionamento == 1) {
        if (frequencia == 0) {
          combinacao =
              'DIA 1-Peitoral,Tríceps e Abdômen\nSupino Reto (com barra ou halteres): 4 séries de 10-12 repetições.\nSupino Inclinado (máquina ou halteres): 3 séries de 10-12 repetições.\nCrossover (Cabo): 3 séries de 12-15 repetições.\nTríceps Pulley (Corda): 4 séries de 12-15 repetições.\nTríceps Testa (com barra EZ): 3 séries de 10-12 repetições.\nAbdominal na Máquina: 4 séries de 15 repetições.\nPrancha Isométrica: 3 séries de 30-45 segundos.\n\nDIA 2 - Costas, Bíceps \n Puxada Frontal (Costas): 4 séries de 10-12 repetições. Remada Baixa no Cabo: 3 séries de 10-12 repetições. Pullover no Cabo: 3 séries de 12-15 repetições. Rosca Direta com Barra: 4 séries de 10-12 repetições. Rosca Alternada com Halteres: 3 séries de 12 repetições. Abdominal Oblíquo (no colchonete): 3 séries de 15 repetições de cada lado. Prancha Lateral: 3 séries de 20-30 segundos de cada lado.\n\nPernas e Panturrilhas\nAgachamento Livre (com barra ou halteres): 4 séries de 10-12 repetições.\nLeg Press: 4 séries de 12 repetições.\nCadeira Extensora (Quadríceps): 3 séries de 12-15 repetições.\nMesa Flexora (Posterior de Coxa): 3 séries de 12-15 repetições.\nElevação de Panturrilha no Leg Press: 4 séries de 15-20 repetições.\nStiff (com barra ou halteres): 3 séries de 12 repetições.';
        } else if (frequencia == 1) {
          combinacao =
              'DIA 1-Peitoral,Tríceps e Abdômen\nSupino Reto (com barra ou halteres): 4 séries de 10-12 repetições.\nSupino Inclinado (máquina ou halteres): 3 séries de 10-12 repetições.\nCrossover (Cabo): 3 séries de 12-15 repetições.\nTríceps Pulley (Corda): 4 séries de 12-15 repetições.\nTríceps Testa (com barra EZ): 3 séries de 10-12 repetições.\nAbdominal na Máquina: 4 séries de 15 repetições.\nPrancha Isométrica: 3 séries de 30-45 segundos.\n\nDIA 2 - Costas, Bíceps \n Puxada Frontal (Costas): 4 séries de 10-12 repetições. Remada Baixa no Cabo: 3 séries de 10-12 repetições. Pullover no Cabo: 3 séries de 12-15 repetições. Rosca Direta com Barra: 4 séries de 10-12 repetições. Rosca Alternada com Halteres: 3 séries de 12 repetições. Abdominal Oblíquo (no colchonete): 3 séries de 15 repetições de cada lado. Prancha Lateral: 3 séries de 20-30 segundos de cada lado.\n\nDIA 3-Pernas e Panturrilhas\nAgachamento Livre (com barra ou halteres): 4 séries de 10-12 repetições.\nLeg Press: 4 séries de 12 repetições.\nCadeira Extensora (Quadríceps): 3 séries de 12-15 repetições.\nMesa Flexora (Posterior de Coxa): 3 séries de 12-15 repetições.\nElevação de Panturrilha no Leg Press: 4 séries de 15-20 repetições.\nStiff (com barra ou halteres): 3 séries de 12 repetições.\n\nDIA 4-Ombros e Abdômen\nDesenvolvimento de Ombros (Máquina ou Halteres): 4 séries de 10-12 repetições.\nElevação Lateral (Halteres): 3 séries de 12-15 repetições.\nElevação Frontal (Halteres): 3 séries de 12 repetições.\nEncolhimento (Trapézio com Halteres): 3 séries de 15 repetições.';
        } else {
          combinacao =
              'DIA 1-Peitoral,Tríceps e Abdômen\nSupino Reto (com barra ou halteres): 4 séries de 10-12 repetições.\nSupino Inclinado (máquina ou halteres): 3 séries de 10-12 repetições.\nCrossover (Cabo): 3 séries de 12-15 repetições.\nTríceps Pulley (Corda): 4 séries de 12-15 repetições.\nTríceps Testa (com barra EZ): 3 séries de 10-12 repetições.\nAbdominal na Máquina: 4 séries de 15 repetições.\nPrancha Isométrica: 3 séries de 30-45 segundos.\n\nDIA 2 - Costas, Bíceps \n Puxada Frontal (Costas): 4 séries de 10-12 repetições. Remada Baixa no Cabo: 3 séries de 10-12 repetições. Pullover no Cabo: 3 séries de 12-15 repetições. Rosca Direta com Barra: 4 séries de 10-12 repetições. Rosca Alternada com Halteres: 3 séries de 12 repetições. Abdominal Oblíquo (no colchonete): 3 séries de 15 repetições de cada lado. Prancha Lateral: 3 séries de 20-30 segundos de cada lado.\n\nDIA 3-Pernas e Panturrilhas\nAgachamento Livre (com barra ou halteres): 4 séries de 10-12 repetições.\nLeg Press: 4 séries de 12 repetições.\nCadeira Extensora (Quadríceps): 3 séries de 12-15 repetições.\nMesa Flexora (Posterior de Coxa): 3 séries de 12-15 repetições.\nElevação de Panturrilha no Leg Press: 4 séries de 15-20 repetições.\nStiff (com barra ou halteres): 3 séries de 12 repetições.\n\nDIA 4-Ombros e Abdômen\nDesenvolvimento de Ombros (Máquina ou Halteres): 4 séries de 10-12 repetições.\nElevação Lateral (Halteres): 3 séries de 12-15 repetições.\nElevação Frontal (Halteres): 3 séries de 12 repetições.\nEncolhimento (Trapézio com Halteres): 3 séries de 15 repetições.';
        }
      } else {
        if (frequencia == 0) {
          combinacao =
              'DIA 1 - Corpo Inteiro Leg Press\nSupino Máquina (Peitoral): 3 séries de 12-15 repetições.\nPuxada Frontal (Costas): 3 séries de 12-15 repetições.\nRosca Scott (Bíceps, Máquina ou Banco): 3 séries de 12-15 repetições.\nTríceps Corda (Cabo): 3 séries de 12-15 repetições.\nPrancha Isométrica (Core): 3 séries de 15-30 segundos.\n\n DIA 2 - Foco em Membros Inferiores\n Agachamento Livre (com halteres): 3 séries de 12-15 repetições.\n Cadeira Extensora (Quadríceps): 3 séries de 12-15 repetições.\n Mesa Flexora (Posteriores da coxa): 3 séries de 12-15 repetições.\n Elevação de Panturrilha (Máquina): 3 séries de 15-20 repetições.\n Abdominais no Colchonete (tradicional ou infra): 3 séries de 15 repetições.\n\nDIA 3 - Foco em Membros Superiores\nSupino Inclinado Máquina: 3 séries de 12-15 repetições.\nRemada Máquina (Costas): 3 séries de 12-15 repetições.\nDesenvolvimento de Ombros (Máquina): 3 séries de 12-15 repetições.\nRosca Alternada com Halteres (Bíceps): 3 séries de 12 repetições (cada braço).\nTríceps Testa (com barra EZ): 3 séries de 12 repetições.\nAbdominal na Máquina: 3 séries de 15 repetições.';
        } else if (frequencia == 1) {
          combinacao =
              'DIA 1-Peitoral,Tríceps e Abdômen\nSupino Reto (com barra ou halteres): 4 séries de 10-12 repetições.\nSupino Inclinado (máquina ou halteres): 3 séries de 10-12 repetições.\nCrossover (Cabo): 3 séries de 12-15 repetições.\nTríceps Pulley (Corda): 4 séries de 12-15 repetições.\nTríceps Testa (com barra EZ): 3 séries de 10-12 repetições.\nAbdominal na Máquina: 4 séries de 15 repetições.\nPrancha Isométrica: 3 séries de 30-45 segundos.\n\nDIA 2 - Costas, Bíceps \n Puxada Frontal (Costas): 4 séries de 10-12 repetições. Remada Baixa no Cabo: 3 séries de 10-12 repetições. Pullover no Cabo: 3 séries de 12-15 repetições. Rosca Direta com Barra: 4 séries de 10-12 repetições. Rosca Alternada com Halteres: 3 séries de 12 repetições. Abdominal Oblíquo (no colchonete): 3 séries de 15 repetições de cada lado. Prancha Lateral: 3 séries de 20-30 segundos de cada lado.\n\nDIA 3-Pernas e Panturrilhas\nAgachamento Livre (com barra ou halteres): 4 séries de 10-12 repetições.\nLeg Press: 4 séries de 12 repetições.\nCadeira Extensora (Quadríceps): 3 séries de 12-15 repetições.\nMesa Flexora (Posterior de Coxa): 3 séries de 12-15 repetições.\nElevação de Panturrilha no Leg Press: 4 séries de 15-20 repetições.\nStiff (com barra ou halteres): 3 séries de 12 repetições.\n\nDIA 4-Ombros e Abdômen\nDesenvolvimento de Ombros (Máquina ou Halteres): 4 séries de 10-12 repetições.\nElevação Lateral (Halteres): 3 séries de 12-15 repetições.\nElevação Frontal (Halteres): 3 séries de 12 repetições.\nEncolhimento (Trapézio com Halteres): 3 séries de 15 repetições.';
        } else {
          combinacao =
              'DIA 1 - Corpo Inteiro\n Agachamento Livre com Halteres: 3 séries de 12-15 repetiçõesSupino Máquina (Peitoral): 3 séries de 12-15 repetiçõesPuxada Frontal (Costas): 3 séries de 12-15 repetiçõesRosca Direta com Halteres (Bíceps): 3 séries de 12 repetiçõesTríceps no Pulley com Corda: 3 séries de 12 repetiçõesPrancha Isométrica (Core): 3 séries de 20-30 segundos.\n\nDIA 2 - Membros Superiores\nDesenvolvimento de Ombros Máquina: 3 séries de 12-15 repetições.\nRemada Baixa no Cabo: 3 séries de 12-15 repetições.\nSupino Inclinado Máquina: 3 séries de 12-15 repetições.\nRosca Alternada com Halteres (Bíceps): 3 séries de 12 repetições.\nTríceps Francês com Halteres: 3 séries de 12 repetições.\nAbdominais na Máquina: 3 séries de 15 repetições.\n\nDIA 3 - Membros Inferiores\nLeg Press: 3 séries de 12-15 repetições.\nCadeira Extensora (Quadríceps): 3 séries de 12-15 repetições.\nMesa Flexora (Posteriores da coxa): 3 séries de 12-15 repetições.\nAvanço com Halteres: 3 séries de 12 passos por perna.\nElevação de Panturrilha Máquina: 3 séries de 15-20 repetições.\nPrancha Lateral (Core): 3 séries de 15-20 segundos de cada lado.\n\nDIA 4 - Corpo Inteiro\nAgachamento Livre com Halteres: 3 séries de 12 repetições.Puxada Frontal: 3 séries de 12-15 repetições.Desenvolvimento de Ombros Máquina: 3 séries de 12-15 repetições.Supino Máquina: 3 séries de 12 repetições.Abdominais no Colchonete: 3 séries de 15 repetições.';
        }
      }
    } else if (objetivo == 'Perder peso') {
      if (nivelCondicionamento == 0) {
        if (frequencia == 0) {
          combinacao =
              'DIA 1 -Corpo Inteiro\nAgachamento Livre com Halteres: 4 séries de 12-15 repetições.Supino Reto (Máquina ou Halteres): 3 séries de 10-12 repetições.Remada Curvada com Halteres: 3 séries de 10-12 repetições.Desenvolvimento de Ombros (Máquina ou Halteres): 3 séries de 12 repetições.Abdominais no Colchonete: 3 séries de 15 repetições.\n\nDIA 2 - Abdômen\nBurpees: 10-12 repetições.Mountain Climbers: 20 segundos.Agachamento com Salto: 12 repetições.Flexões (padrão ou com apoio): 10-12 repetições.Abdominal Bicicleta: 15 repetições.\n\nDIA 3 - Treino de Força (Superior)\nSupino Inclinado (Máquina ou Halteres): 4 séries de 10-12 repetições.Puxada Frontal (Costas): 3 séries de 10-12 repetições.Desenvolvimento de Ombros (Máquina ou Halteres): 3 séries de 12 repetições.Rosca Alternada com Halteres (Bíceps): 3 séries de 12 repetições.Tríceps no Pulley com Corda: 3 séries de 12-15 repetições.';
        } else if (frequencia == 1) {
          combinacao =
              'DIA 1 -Corpo Inteiro\nAgachamento Livre com Halteres: 4 séries de 12-15 repetições.Supino Reto (Máquina ou Halteres): 3 séries de 10-12 repetições.Remada Curvada com Halteres: 3 séries de 10-12 repetições.Desenvolvimento de Ombros (Máquina ou Halteres): 3 séries de 12 repetições.Abdominais no Colchonete: 3 séries de 15 repetições.\n\nDIA 2 - Abdômen\nBurpees: 10-12 repetições.Mountain Climbers: 20 segundos.Agachamento com Salto: 12 repetições.Flexões (padrão ou com apoio): 10-12 repetições.Abdominal Bicicleta: 15 repetições.\n\nDIA 3 - Treino de Força (Superior)\nSupino Inclinado (Máquina ou Halteres): 4 séries de 10-12 repetições.Puxada Frontal (Costas): 3 séries de 10-12 repetições.Desenvolvimento de Ombros (Máquina ou Halteres): 3 séries de 12 repetições.Rosca Alternada com Halteres (Bíceps): 3 séries de 12 repetições.Tríceps no Pulley com Corda: 3 séries de 12-15 repetições.\n\nDIA 4 - Inferior\nLeg Press: 4 séries de 10-12 repetições.Cadeira Extensora (Quadríceps): 3 séries de 12-15 repetições.Mesa Flexora (Posteriores da coxa): 3 séries de 12-15 repetições.Elevação de Panturrilha Máquina: 4 séries de 15-20 repetições.Avanço com Halteres: 3 séries de 12 passos por perna.';
        } else {
          combinacao =
              'DIA 1 -Corpo Inteiro\nAgachamento Livre com Halteres: 4 séries de 12-15 repetições.Supino Reto (Máquina ou Halteres): 3 séries de 10-12 repetições.Remada Curvada com Halteres: 3 séries de 10-12 repetições.Desenvolvimento de Ombros (Máquina ou Halteres): 3 séries de 12 repetições.Abdominais no Colchonete: 3 séries de 15 repetições.\n\nDIA 2 - Abdômen\nBurpees: 10-12 repetições.Mountain Climbers: 20 segundos.Agachamento com Salto: 12 repetições.Flexões (padrão ou com apoio): 10-12 repetições.Abdominal Bicicleta: 15 repetições.\n\nDIA 3 - Treino de Força (Superior)\nSupino Inclinado (Máquina ou Halteres): 4 séries de 10-12 repetições.Puxada Frontal (Costas): 3 séries de 10-12 repetições.Desenvolvimento de Ombros (Máquina ou Halteres): 3 séries de 12 repetições.Rosca Alternada com Halteres (Bíceps): 3 séries de 12 repetições.Tríceps no Pulley com Corda: 3 séries de 12-15 repetições.\n\nDIA 4 - Inferior\nLeg Press: 4 séries de 10-12 repetições.Cadeira Extensora (Quadríceps): 3 séries de 12-15 repetições.Mesa Flexora (Posteriores da coxa): 3 séries de 12-15 repetições.Elevação de Panturrilha Máquina: 4 séries de 15-20 repetições.Avanço com Halteres: 3 séries de 12 passos por perna.\n\nDIA 5 - Funcional\nAgachamento com Salto: 12 repetições.Flexões Dinâmicas (mãos próximas/largas): 10 repetições.Kettlebell Swing (ou halter): 12-15 repetições.Mountain Climbers: 20 segundos.Abdominal V-Up: 15 repetições.Corrida Estacionária: 30 segundos.';
        }
      } else if (nivelCondicionamento == 1) {
        if (frequencia == 0) {
          combinacao =
              'DIA 1 -Corpo Inteiro\nAgachamento Livre com Halteres: 4 séries de 12-15 repetições.Supino Reto (Máquina ou Halteres): 3 séries de 10-12 repetições.Remada Curvada com Halteres: 3 séries de 10-12 repetições.Desenvolvimento de Ombros (Máquina ou Halteres): 3 séries de 12 repetições.Abdominais no Colchonete: 3 séries de 15 repetições.\n\nDIA 2 - Abdômen\nBurpees: 10-12 repetições.Mountain Climbers: 20 segundos.Agachamento com Salto: 12 repetições.Flexões (padrão ou com apoio): 10-12 repetições.Abdominal Bicicleta: 15 repetições.\n\nDIA 3 - Treino de Força (Superior)\nSupino Inclinado (Máquina ou Halteres): 4 séries de 10-12 repetições.Puxada Frontal (Costas): 3 séries de 10-12 repetições.Desenvolvimento de Ombros (Máquina ou Halteres): 3 séries de 12 repetições.Rosca Alternada com Halteres (Bíceps): 3 séries de 12 repetições.Tríceps no Pulley com Corda: 3 séries de 12-15 repetições.';
        } else if (frequencia == 1) {
          combinacao =
              'DIA 1 -Corpo Inteiro\nAgachamento Livre com Halteres: 4 séries de 12-15 repetições.Supino Reto (Máquina ou Halteres): 3 séries de 10-12 repetições.Remada Curvada com Halteres: 3 séries de 10-12 repetições.Desenvolvimento de Ombros (Máquina ou Halteres): 3 séries de 12 repetições.Abdominais no Colchonete: 3 séries de 15 repetições.\n\nDIA 2 - Abdômen\nBurpees: 10-12 repetições.Mountain Climbers: 20 segundos.Agachamento com Salto: 12 repetições.Flexões (padrão ou com apoio): 10-12 repetições.Abdominal Bicicleta: 15 repetições.\n\nDIA 3 - Treino de Força (Superior)\nSupino Inclinado (Máquina ou Halteres): 4 séries de 10-12 repetições.Puxada Frontal (Costas): 3 séries de 10-12 repetições.Desenvolvimento de Ombros (Máquina ou Halteres): 3 séries de 12 repetições.Rosca Alternada com Halteres (Bíceps): 3 séries de 12 repetições.Tríceps no Pulley com Corda: 3 séries de 12-15 repetições.\n\nDIA 4 - Inferior\nLeg Press: 4 séries de 10-12 repetições.Cadeira Extensora (Quadríceps): 3 séries de 12-15 repetições.Mesa Flexora (Posteriores da coxa): 3 séries de 12-15 repetições.Elevação de Panturrilha Máquina: 4 séries de 15-20 repetições.Avanço com Halteres: 3 séries de 12 passos por perna.';
        } else {
          combinacao =
              'DIA 1 -Corpo Inteiro\nAgachamento Livre com Halteres: 4 séries de 12-15 repetições.Supino Reto (Máquina ou Halteres): 3 séries de 10-12 repetições.Remada Curvada com Halteres: 3 séries de 10-12 repetições.Desenvolvimento de Ombros (Máquina ou Halteres): 3 séries de 12 repetições.Abdominais no Colchonete: 3 séries de 15 repetições.\n\nDIA 2 - Abdômen\nBurpees: 10-12 repetições.Mountain Climbers: 20 segundos.Agachamento com Salto: 12 repetições.Flexões (padrão ou com apoio): 10-12 repetições.Abdominal Bicicleta: 15 repetições.\n\nDIA 3 - Treino de Força (Superior)\nSupino Inclinado (Máquina ou Halteres): 4 séries de 10-12 repetições.Puxada Frontal (Costas): 3 séries de 10-12 repetições.Desenvolvimento de Ombros (Máquina ou Halteres): 3 séries de 12 repetições.Rosca Alternada com Halteres (Bíceps): 3 séries de 12 repetições.Tríceps no Pulley com Corda: 3 séries de 12-15 repetições.\n\nDIA 4 - Inferior\nLeg Press: 4 séries de 10-12 repetições.Cadeira Extensora (Quadríceps): 3 séries de 12-15 repetições.Mesa Flexora (Posteriores da coxa): 3 séries de 12-15 repetições.Elevação de Panturrilha Máquina: 4 séries de 15-20 repetições.Avanço com Halteres: 3 séries de 12 passos por perna.\n\nDIA 5 - Funcional\nAgachamento com Salto: 12 repetições.Flexões Dinâmicas (mãos próximas/largas): 10 repetições.Kettlebell Swing (ou halter): 12-15 repetições.Mountain Climbers: 20 segundos.Abdominal V-Up: 15 repetições.Corrida Estacionária: 30 segundos.';
        }
      } else {
        if (frequencia == 0) {
          combinacao =
              'DIA 1 -Corpo Inteiro\nAgachamento Livre com Halteres: 4 séries de 12-15 repetições.Supino Reto (Máquina ou Halteres): 3 séries de 10-12 repetições.Remada Curvada com Halteres: 3 séries de 10-12 repetições.Desenvolvimento de Ombros (Máquina ou Halteres): 3 séries de 12 repetições.Abdominais no Colchonete: 3 séries de 15 repetições.\n\nDIA 2 - Abdômen\nBurpees: 10-12 repetições.Mountain Climbers: 20 segundos.Agachamento com Salto: 12 repetições.Flexões (padrão ou com apoio): 10-12 repetições.Abdominal Bicicleta: 15 repetições.\n\nDIA 3 - Treino de Força (Superior)\nSupino Inclinado (Máquina ou Halteres): 4 séries de 10-12 repetições.Puxada Frontal (Costas): 3 séries de 10-12 repetições.Desenvolvimento de Ombros (Máquina ou Halteres): 3 séries de 12 repetições.Rosca Alternada com Halteres (Bíceps): 3 séries de 12 repetições.Tríceps no Pulley com Corda: 3 séries de 12-15 repetições.';
        } else if (frequencia == 1) {
          combinacao =
              'DIA 1 -Corpo Inteiro\nAgachamento Livre com Halteres: 4 séries de 12-15 repetições.Supino Reto (Máquina ou Halteres): 3 séries de 10-12 repetições.Remada Curvada com Halteres: 3 séries de 10-12 repetições.Desenvolvimento de Ombros (Máquina ou Halteres): 3 séries de 12 repetições.Abdominais no Colchonete: 3 séries de 15 repetições.\n\nDIA 2 - Abdômen\nBurpees: 10-12 repetições.Mountain Climbers: 20 segundos.Agachamento com Salto: 12 repetições.Flexões (padrão ou com apoio): 10-12 repetições.Abdominal Bicicleta: 15 repetições.\n\nDIA 3 - Treino de Força (Superior)\nSupino Inclinado (Máquina ou Halteres): 4 séries de 10-12 repetições.Puxada Frontal (Costas): 3 séries de 10-12 repetições.Desenvolvimento de Ombros (Máquina ou Halteres): 3 séries de 12 repetições.Rosca Alternada com Halteres (Bíceps): 3 séries de 12 repetições.Tríceps no Pulley com Corda: 3 séries de 12-15 repetições.\n\nDIA 4 - Inferior\nLeg Press: 4 séries de 10-12 repetições.Cadeira Extensora (Quadríceps): 3 séries de 12-15 repetições.Mesa Flexora (Posteriores da coxa): 3 séries de 12-15 repetições.Elevação de Panturrilha Máquina: 4 séries de 15-20 repetições.Avanço com Halteres: 3 séries de 12 passos por perna.';
        } else {
          combinacao =
              'DIA 1 -Corpo Inteiro\nAgachamento Livre com Halteres: 4 séries de 12-15 repetições.Supino Reto (Máquina ou Halteres): 3 séries de 10-12 repetições.Remada Curvada com Halteres: 3 séries de 10-12 repetições.Desenvolvimento de Ombros (Máquina ou Halteres): 3 séries de 12 repetições.Abdominais no Colchonete: 3 séries de 15 repetições.\n\nDIA 2 - Abdômen\nBurpees: 10-12 repetições.Mountain Climbers: 20 segundos.Agachamento com Salto: 12 repetições.Flexões (padrão ou com apoio): 10-12 repetições.Abdominal Bicicleta: 15 repetições.\n\nDIA 3 - Treino de Força (Superior)\nSupino Inclinado (Máquina ou Halteres): 4 séries de 10-12 repetições.Puxada Frontal (Costas): 3 séries de 10-12 repetições.Desenvolvimento de Ombros (Máquina ou Halteres): 3 séries de 12 repetições.Rosca Alternada com Halteres (Bíceps): 3 séries de 12 repetições.Tríceps no Pulley com Corda: 3 séries de 12-15 repetições.\n\nDIA 4 - Inferior\nLeg Press: 4 séries de 10-12 repetições.Cadeira Extensora (Quadríceps): 3 séries de 12-15 repetições.Mesa Flexora (Posteriores da coxa): 3 séries de 12-15 repetições.Elevação de Panturrilha Máquina: 4 séries de 15-20 repetições.Avanço com Halteres: 3 séries de 12 passos por perna.\n\nDIA 5 - Funcional\nAgachamento com Salto: 12 repetições.Flexões Dinâmicas (mãos próximas/largas): 10 repetições.Kettlebell Swing (ou halter): 12-15 repetições.Mountain Climbers: 20 segundos.Abdominal V-Up: 15 repetições.Corrida Estacionária: 30 segundos.';
        }
      }
    } else if (objetivo == 'Ganhar massa muscular') {
      if (nivelCondicionamento == 0) {
        if (frequencia == 0) {
          combinacao =
              'DIA 1 -Peitoral e Tríceps\nSupino Reto (Barra): 4 séries de 6-10 repetições (foco em carga).\nSupino Inclinado (Halteres): 4 séries de 8-12 repetições.\nCrossover (Cabo): 3 séries de 10-15 repetições.\nTríceps Pulley (Corda): 4 séries de 10-12 repetições.\nTríceps Francês (Barra EZ): 3 séries de 10-12 repetições.\nMergulho em Paralelas: 3 séries de 12 repetições (use peso adicional se necessário).\n\nDIA 2 - Costas e Bíceps\nBarra Fixa (Peso Adicional Opcional): 4 séries de 8-10 repetições.Remada Baixa (Cabo): 4 séries de 10-12 repetições.Pulldown (Puxada Frontal): 3 séries de 10-12 repetições.Rosca Direta (Barra): 4 séries de 8-12 repetições.Rosca Martelo (Halteres): 3 séries de 10-12 repetições.Rosca Concentrada (Unilateral): 3 séries de 12-15 repetições.\n\nDIA 3 -Pernas e Panturrilhas\nAgachamento Livre: 4 séries de 6-10 repetições.Leg Press (Pernas Abertas): 4 séries de 10-12 repetições.Cadeira Extensora (Quadríceps): 3 séries de 10-15 repetições.Mesa Flexora (Posteriores de Coxa): 3 séries de 10-12 repetições.Stiff (com Barra ou Halteres): 3 séries de 8-10 repetições.Elevação de Panturrilha no Leg Press: 4 séries de 15-20 repetições.';
        } else if (frequencia == 1) {
          combinacao =
              'DIA 1 -Peitoral e Tríceps\nSupino Reto (Barra): 4 séries de 6-10 repetições (foco em carga).\nSupino Inclinado (Halteres): 4 séries de 8-12 repetições.\nCrossover (Cabo): 3 séries de 10-15 repetições.\nTríceps Pulley (Corda): 4 séries de 10-12 repetições.\nTríceps Francês (Barra EZ): 3 séries de 10-12 repetições.\nMergulho em Paralelas: 3 séries de 12 repetições (use peso adicional se necessário).\n\nDIA 2 - Costas e Bíceps\nBarra Fixa (Peso Adicional Opcional): 4 séries de 8-10 repetições.Remada Baixa (Cabo): 4 séries de 10-12 repetições.Pulldown (Puxada Frontal): 3 séries de 10-12 repetições.Rosca Direta (Barra): 4 séries de 8-12 repetições.Rosca Martelo (Halteres): 3 séries de 10-12 repetições.Rosca Concentrada (Unilateral): 3 séries de 12-15 repetições.\n\nDIA 3 -Pernas e Panturrilhas\nAgachamento Livre: 4 séries de 6-10 repetições.Leg Press (Pernas Abertas): 4 séries de 10-12 repetições.Cadeira Extensora (Quadríceps): 3 séries de 10-15 repetições.Mesa Flexora (Posteriores de Coxa): 3 séries de 10-12 repetições.Stiff (com Barra ou Halteres): 3 séries de 8-10 repetições.Elevação de Panturrilha no Leg Press: 4 séries de 15-20 repetições.\n\nDIA 4 -Ombros e Abdômen\nDesenvolvimento Militar (Barra ou Halteres): 4 séries de 8-10 repetições.\nElevação Lateral (Halteres): 4 séries de 10-12 repetições.\nElevação Frontal (Halteres ou Barra): 3 séries de 12 repetições.\nEncolhimento (Trapézio com Halteres): 3 séries de 12-15 repetições.\nAbdominal na Máquina: 4 séries de 15 repetições.\nPrancha com Peso: 3 séries de 30-60 segundos.';
        } else {
          combinacao =
              'DIA 1 -Peitoral e Tríceps\nSupino Reto (Barra): 4 séries de 6-10 repetições (foco em carga).\nSupino Inclinado (Halteres): 4 séries de 8-12 repetições.\nCrossover (Cabo): 3 séries de 10-15 repetições.\nTríceps Pulley (Corda): 4 séries de 10-12 repetições.\nTríceps Francês (Barra EZ): 3 séries de 10-12 repetições.\nMergulho em Paralelas: 3 séries de 12 repetições (use peso adicional se necessário).\n\nDIA 2 - Costas e Bíceps\nBarra Fixa (Peso Adicional Opcional): 4 séries de 8-10 repetições.Remada Baixa (Cabo): 4 séries de 10-12 repetições.Pulldown (Puxada Frontal): 3 séries de 10-12 repetições.Rosca Direta (Barra): 4 séries de 8-12 repetições.Rosca Martelo (Halteres): 3 séries de 10-12 repetições.Rosca Concentrada (Unilateral): 3 séries de 12-15 repetições.\n\nDIA 3 -Pernas e Panturrilhas\nAgachamento Livre: 4 séries de 6-10 repetições.Leg Press (Pernas Abertas): 4 séries de 10-12 repetições.Cadeira Extensora (Quadríceps): 3 séries de 10-15 repetições.Mesa Flexora (Posteriores de Coxa): 3 séries de 10-12 repetições.Stiff (com Barra ou Halteres): 3 séries de 8-10 repetições.Elevação de Panturrilha no Leg Press: 4 séries de 15-20 repetições.\n\nDIA 4 -Ombros e Abdômen\nDesenvolvimento Militar (Barra ou Halteres): 4 séries de 8-10 repetições.\nElevação Lateral (Halteres): 4 séries de 10-12 repetições.\nElevação Frontal (Halteres ou Barra): 3 séries de 12 repetições.\nEncolhimento (Trapézio com Halteres): 3 séries de 12-15 repetições.\nAbdominal na Máquina: 4 séries de 15 repetições.\nPrancha com Peso: 3 séries de 30-60 segundos.';
        }
      } else if (nivelCondicionamento == 1) {
        if (frequencia == 0) {
          combinacao =
              'DIA 1 -Peitoral e Tríceps\nSupino Reto (Barra): 4 séries de 6-10 repetições (foco em carga).\nSupino Inclinado (Halteres): 4 séries de 8-12 repetições.\nCrossover (Cabo): 3 séries de 10-15 repetições.\nTríceps Pulley (Corda): 4 séries de 10-12 repetições.\nTríceps Francês (Barra EZ): 3 séries de 10-12 repetições.\nMergulho em Paralelas: 3 séries de 12 repetições (use peso adicional se necessário).\n\nDIA 2 - Costas e Bíceps\nBarra Fixa (Peso Adicional Opcional): 4 séries de 8-10 repetições.Remada Baixa (Cabo): 4 séries de 10-12 repetições.Pulldown (Puxada Frontal): 3 séries de 10-12 repetições.Rosca Direta (Barra): 4 séries de 8-12 repetições.Rosca Martelo (Halteres): 3 séries de 10-12 repetições.Rosca Concentrada (Unilateral): 3 séries de 12-15 repetições.\n\nDIA 3 -Pernas e Panturrilhas\nAgachamento Livre: 4 séries de 6-10 repetições.Leg Press (Pernas Abertas): 4 séries de 10-12 repetições.Cadeira Extensora (Quadríceps): 3 séries de 10-15 repetições.Mesa Flexora (Posteriores de Coxa): 3 séries de 10-12 repetições.Stiff (com Barra ou Halteres): 3 séries de 8-10 repetições.Elevação de Panturrilha no Leg Press: 4 séries de 15-20 repetições.';
        } else if (frequencia == 1) {
          combinacao =
              'DIA 1 -Peitoral e Tríceps\nSupino Reto (Barra): 4 séries de 6-10 repetições (foco em carga).\nSupino Inclinado (Halteres): 4 séries de 8-12 repetições.\nCrossover (Cabo): 3 séries de 10-15 repetições.\nTríceps Pulley (Corda): 4 séries de 10-12 repetições.\nTríceps Francês (Barra EZ): 3 séries de 10-12 repetições.\nMergulho em Paralelas: 3 séries de 12 repetições (use peso adicional se necessário).\n\nDIA 2 - Costas e Bíceps\nBarra Fixa (Peso Adicional Opcional): 4 séries de 8-10 repetições.Remada Baixa (Cabo): 4 séries de 10-12 repetições.Pulldown (Puxada Frontal): 3 séries de 10-12 repetições.Rosca Direta (Barra): 4 séries de 8-12 repetições.Rosca Martelo (Halteres): 3 séries de 10-12 repetições.Rosca Concentrada (Unilateral): 3 séries de 12-15 repetições.\n\nDIA 3 -Pernas e Panturrilhas\nAgachamento Livre: 4 séries de 6-10 repetições.Leg Press (Pernas Abertas): 4 séries de 10-12 repetições.Cadeira Extensora (Quadríceps): 3 séries de 10-15 repetições.Mesa Flexora (Posteriores de Coxa): 3 séries de 10-12 repetições.Stiff (com Barra ou Halteres): 3 séries de 8-10 repetições.Elevação de Panturrilha no Leg Press: 4 séries de 15-20 repetições.\n\nDIA 4 -Ombros e Abdômen\nDesenvolvimento Militar (Barra ou Halteres): 4 séries de 8-10 repetições.\nElevação Lateral (Halteres): 4 séries de 10-12 repetições.\nElevação Frontal (Halteres ou Barra): 3 séries de 12 repetições.\nEncolhimento (Trapézio com Halteres): 3 séries de 12-15 repetições.\nAbdominal na Máquina: 4 séries de 15 repetições.\nPrancha com Peso: 3 séries de 30-60 segundos';
        } else {
          combinacao =
              'DIA 1 -Peitoral e Tríceps\nSupino Reto (Barra): 4 séries de 6-10 repetições (foco em carga).\nSupino Inclinado (Halteres): 4 séries de 8-12 repetições.\nCrossover (Cabo): 3 séries de 10-15 repetições.\nTríceps Pulley (Corda): 4 séries de 10-12 repetições.\nTríceps Francês (Barra EZ): 3 séries de 10-12 repetições.\nMergulho em Paralelas: 3 séries de 12 repetições (use peso adicional se necessário).\n\nDIA 2 - Costas e Bíceps\nBarra Fixa (Peso Adicional Opcional): 4 séries de 8-10 repetições.Remada Baixa (Cabo): 4 séries de 10-12 repetições.Pulldown (Puxada Frontal): 3 séries de 10-12 repetições.Rosca Direta (Barra): 4 séries de 8-12 repetições.Rosca Martelo (Halteres): 3 séries de 10-12 repetições.Rosca Concentrada (Unilateral): 3 séries de 12-15 repetições.\n\nDIA 3 -Pernas e Panturrilhas\nAgachamento Livre: 4 séries de 6-10 repetições.Leg Press (Pernas Abertas): 4 séries de 10-12 repetições.Cadeira Extensora (Quadríceps): 3 séries de 10-15 repetições.Mesa Flexora (Posteriores de Coxa): 3 séries de 10-12 repetições.Stiff (com Barra ou Halteres): 3 séries de 8-10 repetições.Elevação de Panturrilha no Leg Press: 4 séries de 15-20 repetições.\n\nDIA 4 -Ombros e Abdômen\nDesenvolvimento Militar (Barra ou Halteres): 4 séries de 8-10 repetições.\nElevação Lateral (Halteres): 4 séries de 10-12 repetições.\nElevação Frontal (Halteres ou Barra): 3 séries de 12 repetições.\nEncolhimento (Trapézio com Halteres): 3 séries de 12-15 repetições.\nAbdominal na Máquina: 4 séries de 15 repetições.\nPrancha com Peso: 3 séries de 30-60 segundos.';
        }
      } else {
        if (frequencia == 0) {
          combinacao = 'DIA 1 -Peitoral e Tríceps\nSupino Reto (Barra): 4 séries de 6-10 repetições (foco em carga).\nSupino Inclinado (Halteres): 4 séries de 8-12 repetições.\nCrossover (Cabo): 3 séries de 10-15 repetições.\nTríceps Pulley (Corda): 4 séries de 10-12 repetições.\nTríceps Francês (Barra EZ): 3 séries de 10-12 repetições.\nMergulho em Paralelas: 3 séries de 12 repetições (use peso adicional se necessário).\n\nDIA 2 - Costas e Bíceps\nBarra Fixa (Peso Adicional Opcional): 4 séries de 8-10 repetições.Remada Baixa (Cabo): 4 séries de 10-12 repetições.Pulldown (Puxada Frontal): 3 séries de 10-12 repetições.Rosca Direta (Barra): 4 séries de 8-12 repetições.Rosca Martelo (Halteres): 3 séries de 10-12 repetições.Rosca Concentrada (Unilateral): 3 séries de 12-15 repetições.\n\nDIA 3 -Pernas e Panturrilhas\nAgachamento Livre: 4 séries de 6-10 repetições.Leg Press (Pernas Abertas): 4 séries de 10-12 repetições.Cadeira Extensora (Quadríceps): 3 séries de 10-15 repetições.Mesa Flexora (Posteriores de Coxa): 3 séries de 10-12 repetições.Stiff (com Barra ou Halteres): 3 séries de 8-10 repetições.Elevação de Panturrilha no Leg Press: 4 séries de 15-20 repetições.';
        } else if (frequencia == 1) {
          combinacao = 'DIA 1 -Peitoral e Tríceps\nSupino Reto (Barra): 4 séries de 6-10 repetições (foco em carga).\nSupino Inclinado (Halteres): 4 séries de 8-12 repetições.\nCrossover (Cabo): 3 séries de 10-15 repetições.\nTríceps Pulley (Corda): 4 séries de 10-12 repetições.\nTríceps Francês (Barra EZ): 3 séries de 10-12 repetições.\nMergulho em Paralelas: 3 séries de 12 repetições (use peso adicional se necessário).\n\nDIA 2 - Costas e Bíceps\nBarra Fixa (Peso Adicional Opcional): 4 séries de 8-10 repetições.Remada Baixa (Cabo): 4 séries de 10-12 repetições.Pulldown (Puxada Frontal): 3 séries de 10-12 repetições.Rosca Direta (Barra): 4 séries de 8-12 repetições.Rosca Martelo (Halteres): 3 séries de 10-12 repetições.Rosca Concentrada (Unilateral): 3 séries de 12-15 repetições.\n\nDIA 3 -Pernas e Panturrilhas\nAgachamento Livre: 4 séries de 6-10 repetições.Leg Press (Pernas Abertas): 4 séries de 10-12 repetições.Cadeira Extensora (Quadríceps): 3 séries de 10-15 repetições.Mesa Flexora (Posteriores de Coxa): 3 séries de 10-12 repetições.Stiff (com Barra ou Halteres): 3 séries de 8-10 repetições.Elevação de Panturrilha no Leg Press: 4 séries de 15-20 repetições.\n\nDIA 4 -Ombros e Abdômen\nDesenvolvimento Militar (Barra ou Halteres): 4 séries de 8-10 repetições.\nElevação Lateral (Halteres): 4 séries de 10-12 repetições.\nElevação Frontal (Halteres ou Barra): 3 séries de 12 repetições.\nEncolhimento (Trapézio com Halteres): 3 séries de 12-15 repetições.\nAbdominal na Máquina: 4 séries de 15 repetições.\nPrancha com Peso: 3 séries de 30-60 segundos.';
        } else {
          combinacao = 'DIA 1 -Peitoral e Tríceps\nSupino Reto (Barra): 4 séries de 6-10 repetições (foco em carga).\nSupino Inclinado (Halteres): 4 séries de 8-12 repetições.\nCrossover (Cabo): 3 séries de 10-15 repetições.\nTríceps Pulley (Corda): 4 séries de 10-12 repetições.\nTríceps Francês (Barra EZ): 3 séries de 10-12 repetições.\nMergulho em Paralelas: 3 séries de 12 repetições (use peso adicional se necessário).\n\nDIA 2 - Costas e Bíceps\nBarra Fixa (Peso Adicional Opcional): 4 séries de 8-10 repetições.Remada Baixa (Cabo): 4 séries de 10-12 repetições.Pulldown (Puxada Frontal): 3 séries de 10-12 repetições.Rosca Direta (Barra): 4 séries de 8-12 repetições.Rosca Martelo (Halteres): 3 séries de 10-12 repetições.Rosca Concentrada (Unilateral): 3 séries de 12-15 repetições.\n\nDIA 3 -Pernas e Panturrilhas\nAgachamento Livre: 4 séries de 6-10 repetições.Leg Press (Pernas Abertas): 4 séries de 10-12 repetições.Cadeira Extensora (Quadríceps): 3 séries de 10-15 repetições.Mesa Flexora (Posteriores de Coxa): 3 séries de 10-12 repetições.Stiff (com Barra ou Halteres): 3 séries de 8-10 repetições.Elevação de Panturrilha no Leg Press: 4 séries de 15-20 repetições.\n\nDIA 4 -Ombros e Abdômen\nDesenvolvimento Militar (Barra ou Halteres): 4 séries de 8-10 repetições.\nElevação Lateral (Halteres): 4 séries de 10-12 repetições.\nElevação Frontal (Halteres ou Barra): 3 séries de 12 repetições.\nEncolhimento (Trapézio com Halteres): 3 séries de 12-15 repetições.\nAbdominal na Máquina: 4 séries de 15 repetições.\nPrancha com Peso: 3 séries de 30-60 segundos.';
        }
      }
    } else {
      combinacao = 'Objetivo não selecionado';
    }

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
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
              const SizedBox(height: 20),
              // Conteúdo adicional da página
              Center(
                child: const Text(
                  '',
                  style: TextStyle(color: Colors.white, fontSize: 18),
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
            Navigator.pop(context);
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AlimentacaoPage(
                  objetivo: objetivo,
                ),
              ),
            );
          }
          else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PerfilPage(
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
