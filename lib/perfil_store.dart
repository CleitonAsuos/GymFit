import 'package:mobx/mobx.dart';

part 'perfil_store.g.dart';

class PerfilStore = _PerfilStore with _$PerfilStore;

abstract class _PerfilStore with Store {
  @observable
  String nome = '';

  @observable
  int idade = 0;

  @observable
  String sexo = '';

  @observable
  double peso = 0.0;

  @observable
  double altura = 0.0;

  @observable
  String objetivo = '';

  @action
  void setNome(String value) => nome = value;

  @action
  void setIdade(int value) => idade = value;

  @action
  void setSexo(String value) => sexo = value;

  @action
  void setPeso(double value) => peso = value;

  @action
  void setAltura(double value) => altura = value;

  @action
  void setObjetivo(String value) => objetivo = value;
}