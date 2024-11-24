import 'package:mobx/mobx.dart';

part 'alimentacao_store.g.dart';

class AlimentacaoStore = _AlimentacaoStore with _$AlimentacaoStore;

abstract class _AlimentacaoStore with Store {
  @observable
  List<String> receitas = [];

  @action
  void setReceitas(String objetivo) {
    // Implementar a lógica para definir as receitas com base no objetivo
    if (objetivo == 'Perder peso') {
      receitas = [
        'Café da manhã:\n• Aveia com frutas\n• Chá verde',
        'Almoço:\n• Salada de quinoa\n• Peito de frango grelhado',
        'Jantar:\n• Sopa de legumes\n• Salmão ao forno',
      ];
    } else if (objetivo == 'Ganhar massa muscular') {
      receitas = [
        'Café da manhã:\n• Omelete com espinafre\n• Suco de laranja',
        'Almoço:\n• Arroz integral\n• Carne bovina\n• Brócolis',
        'Jantar:\n• Batata doce\n• Peito de frango\n• Abobrinha',
      ];
    } else {
      receitas = [
        'Café da manhã:\n• Iogurte com granola\n• Frutas',
        'Almoço:\n• Massa integral\n• Almôndegas de peru\n• Salada verde',
        'Jantar:\n• Risoto de cogumelos\n• Salada de rúcula',
      ];
    }
  }
}