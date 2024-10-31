// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'principal_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainStore on _MainStore, Store {
  Computed<String>? _$nivelCondicionamentoLabelComputed;

  @override
  String get nivelCondicionamentoLabel =>
      (_$nivelCondicionamentoLabelComputed ??= Computed<String>(
              () => super.nivelCondicionamentoLabel,
              name: '_MainStore.nivelCondicionamentoLabel'))
          .value;
  Computed<String>? _$frequenciaLabelComputed;

  @override
  String get frequenciaLabel => (_$frequenciaLabelComputed ??= Computed<String>(
          () => super.frequenciaLabel,
          name: '_MainStore.frequenciaLabel'))
      .value;

  late final _$nivelCondicionamentoAtom =
      Atom(name: '_MainStore.nivelCondicionamento', context: context);

  @override
  double get nivelCondicionamento {
    _$nivelCondicionamentoAtom.reportRead();
    return super.nivelCondicionamento;
  }

  @override
  set nivelCondicionamento(double value) {
    _$nivelCondicionamentoAtom.reportWrite(value, super.nivelCondicionamento,
        () {
      super.nivelCondicionamento = value;
    });
  }

  late final _$objetivoAtom =
      Atom(name: '_MainStore.objetivo', context: context);

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

  late final _$frequenciaAtom =
      Atom(name: '_MainStore.frequencia', context: context);

  @override
  double get frequencia {
    _$frequenciaAtom.reportRead();
    return super.frequencia;
  }

  @override
  set frequencia(double value) {
    _$frequenciaAtom.reportWrite(value, super.frequencia, () {
      super.frequencia = value;
    });
  }

  late final _$_MainStoreActionController =
      ActionController(name: '_MainStore', context: context);

  @override
  void setNivelCondicionamento(double value) {
    final _$actionInfo = _$_MainStoreActionController.startAction(
        name: '_MainStore.setNivelCondicionamento');
    try {
      return super.setNivelCondicionamento(value);
    } finally {
      _$_MainStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFrequencia(double value) {
    final _$actionInfo = _$_MainStoreActionController.startAction(
        name: '_MainStore.setFrequencia');
    try {
      return super.setFrequencia(value);
    } finally {
      _$_MainStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setObjetivo(String? value) {
    final _$actionInfo = _$_MainStoreActionController.startAction(
        name: '_MainStore.setObjetivo');
    try {
      return super.setObjetivo(value);
    } finally {
      _$_MainStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nivelCondicionamento: ${nivelCondicionamento},
objetivo: ${objetivo},
frequencia: ${frequencia},
nivelCondicionamentoLabel: ${nivelCondicionamentoLabel},
frequenciaLabel: ${frequenciaLabel}
    ''';
  }
}
