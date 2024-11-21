import 'package:mobx/mobx.dart';

part 'exercicio_store.g.dart';

class ExercicioStore = _ExercicioStore with _$ExercicioStore;

abstract class _ExercicioStore with Store {
  @observable
  String objetivo = '';

  @observable
  String exercicio = '';

  @observable
  double nivelCondicionamento = 0;

  @observable
  double frequencia = 0;

  @action
  void setExercicio(String value) {
    exercicio = value;
  }

  @action
  void setObjetivo(String value) {
    objetivo = value;
  }

  @action
  void setNivelCondicionamento(double value) {
    nivelCondicionamento = value;
  }

  @action
  void setFrequencia(double value) {
    frequencia = value;
  }
}