import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'principal_page.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool isLoading = false;

  @action
  void setEmail(String value) {
    email = value;
  }

  @action
  void setPassword(String value) {
    password = value;
  }

  @action
  Future<void> login(BuildContext context) async {
    isLoading = true;
    // Simule uma chamada de login
    await Future.delayed(Duration(seconds: 2));
    isLoading = false;
    // Navegar para a página principal após o login bem-sucedido
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => PrincipalPage()),
    );
  }
}