import 'package:mobx/mobx.dart';

part 'principal_store.g.dart';

class MainStore = _MainStore with _$MainStore;

abstract class _MainStore with Store {
  @observable
  double nivelCondicionamento = 0;

  @observable
  double frequencia = 0;

  @computed
  String get nivelCondicionamentoLabel {
    switch (nivelCondicionamento.toInt()) {
      case 0:
        return 'Iniciante';
      case 1:
        return 'Intermediário';
      case 2:
        return 'Avançado';
      default:
        return '';
    }
  }

  @computed
  String get frequenciaLabel {
    switch (frequencia.toInt()) {
      case 0:
        return '2 a 3 vezes';
      case 1:
        return '3 a 5 vezes';
      case 2:
        return '5 a 7 vezes';
      default:
        return '';
    }
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