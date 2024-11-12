import 'package:mobx/mobx.dart';

part 'exercicio_store.g.dart';

class ExercicioStore = _ExercicioStore with _$ExercicioStore;

abstract class _ExercicioStore with Store {
  @observable
  String exercicio = '';

  @action
  void setExercicio(String value) {
    exercicio = value;
  }
}