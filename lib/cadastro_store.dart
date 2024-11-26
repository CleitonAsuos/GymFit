import 'package:mobx/mobx.dart';
part 'cadastro_store.g.dart';

class CadastroStore = _CadastroStore with _$CadastroStore;

abstract class _CadastroStore with Store {
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

  @observable
  String email = '';

  @observable
  String senha = '';

  @observable
  String confirmacaoSenha = '';

  @observable
  String nivelCondicionamento = '';

  @action
  void setNome(String value) {
    nome = value;
  }

  @action
  void setIdade(int value) {
    idade = value;
  }

  @action
  void setSexo(String? value) {
    sexo = value ?? '';
  }

  @action
  void setPeso(double value) {
    peso = value;
  }

  @action
  void setAltura(double value) {
    altura = value;
  }

  @action
  void setObjetivo(String value) {
    objetivo = value;
  }

  @action
  void setEmail(String value) {
    email = value;
  }

  @action
  void setSenha(String value) {
    senha = value;
  }

  @action
  void setConfirmacaoSenha(String value) {
    confirmacaoSenha = value;
  }

  @action
  void setNivelCondicionamento(String value) {
    nivelCondicionamento = value;
  }
}