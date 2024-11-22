// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercicio_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ExercicioStore on _ExercicioStore, Store {
  late final _$objetivoAtom =
      Atom(name: '_ExercicioStore.objetivo', context: context);

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

  late final _$exercicioAtom =
      Atom(name: '_ExercicioStore.exercicio', context: context);

  @override
  String get exercicio {
    _$exercicioAtom.reportRead();
    return super.exercicio;
  }

  @override
  set exercicio(String value) {
    _$exercicioAtom.reportWrite(value, super.exercicio, () {
      super.exercicio = value;
    });
  }

  late final _$nivelCondicionamentoAtom =
      Atom(name: '_ExercicioStore.nivelCondicionamento', context: context);

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

  late final _$frequenciaAtom =
      Atom(name: '_ExercicioStore.frequencia', context: context);

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

  late final _$_ExercicioStoreActionController =
      ActionController(name: '_ExercicioStore', context: context);

  @override
  void setExercicio(String value) {
    final _$actionInfo = _$_ExercicioStoreActionController.startAction(
        name: '_ExercicioStore.setExercicio');
    try {
      return super.setExercicio(value);
    } finally {
      _$_ExercicioStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setObjetivo(String value) {
    final _$actionInfo = _$_ExercicioStoreActionController.startAction(
        name: '_ExercicioStore.setObjetivo');
    try {
      return super.setObjetivo(value);
    } finally {
      _$_ExercicioStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNivelCondicionamento(double value) {
    final _$actionInfo = _$_ExercicioStoreActionController.startAction(
        name: '_ExercicioStore.setNivelCondicionamento');
    try {
      return super.setNivelCondicionamento(value);
    } finally {
      _$_ExercicioStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFrequencia(double value) {
    final _$actionInfo = _$_ExercicioStoreActionController.startAction(
        name: '_ExercicioStore.setFrequencia');
    try {
      return super.setFrequencia(value);
    } finally {
      _$_ExercicioStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
objetivo: ${objetivo},
exercicio: ${exercicio},
nivelCondicionamento: ${nivelCondicionamento},
frequencia: ${frequencia}
    ''';
  }
}
