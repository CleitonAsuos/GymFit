// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perfil_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PerfilStore on _PerfilStore, Store {
  late final _$nomeAtom = Atom(name: '_PerfilStore.nome', context: context);

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$idadeAtom = Atom(name: '_PerfilStore.idade', context: context);

  @override
  int get idade {
    _$idadeAtom.reportRead();
    return super.idade;
  }

  @override
  set idade(int value) {
    _$idadeAtom.reportWrite(value, super.idade, () {
      super.idade = value;
    });
  }

  late final _$sexoAtom = Atom(name: '_PerfilStore.sexo', context: context);

  @override
  String get sexo {
    _$sexoAtom.reportRead();
    return super.sexo;
  }

  @override
  set sexo(String value) {
    _$sexoAtom.reportWrite(value, super.sexo, () {
      super.sexo = value;
    });
  }

  late final _$pesoAtom = Atom(name: '_PerfilStore.peso', context: context);

  @override
  double get peso {
    _$pesoAtom.reportRead();
    return super.peso;
  }

  @override
  set peso(double value) {
    _$pesoAtom.reportWrite(value, super.peso, () {
      super.peso = value;
    });
  }

  late final _$alturaAtom = Atom(name: '_PerfilStore.altura', context: context);

  @override
  double get altura {
    _$alturaAtom.reportRead();
    return super.altura;
  }

  @override
  set altura(double value) {
    _$alturaAtom.reportWrite(value, super.altura, () {
      super.altura = value;
    });
  }

  late final _$objetivoAtom =
      Atom(name: '_PerfilStore.objetivo', context: context);

  @override
  String get objetivo {
    _$objetivoAtom.reportRead();
    return super.objetivo;
  }

  @override
  set objetivo(String value) {
    _$objetivoAtom.reportWrite(value, super.objetivo, () {
      super.objetivo = value;
    });
  }

  late final _$_PerfilStoreActionController =
      ActionController(name: '_PerfilStore', context: context);

  @override
  void setNome(String value) {
    final _$actionInfo = _$_PerfilStoreActionController.startAction(
        name: '_PerfilStore.setNome');
    try {
      return super.setNome(value);
    } finally {
      _$_PerfilStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIdade(int value) {
    final _$actionInfo = _$_PerfilStoreActionController.startAction(
        name: '_PerfilStore.setIdade');
    try {
      return super.setIdade(value);
    } finally {
      _$_PerfilStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSexo(String value) {
    final _$actionInfo = _$_PerfilStoreActionController.startAction(
        name: '_PerfilStore.setSexo');
    try {
      return super.setSexo(value);
    } finally {
      _$_PerfilStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPeso(double value) {
    final _$actionInfo = _$_PerfilStoreActionController.startAction(
        name: '_PerfilStore.setPeso');
    try {
      return super.setPeso(value);
    } finally {
      _$_PerfilStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAltura(double value) {
    final _$actionInfo = _$_PerfilStoreActionController.startAction(
        name: '_PerfilStore.setAltura');
    try {
      return super.setAltura(value);
    } finally {
      _$_PerfilStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setObjetivo(String value) {
    final _$actionInfo = _$_PerfilStoreActionController.startAction(
        name: '_PerfilStore.setObjetivo');
    try {
      return super.setObjetivo(value);
    } finally {
      _$_PerfilStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
idade: ${idade},
sexo: ${sexo},
peso: ${peso},
altura: ${altura},
objetivo: ${objetivo}
    ''';
  }
}
