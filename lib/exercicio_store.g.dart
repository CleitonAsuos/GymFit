// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercicio_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ExercicioStore on _ExercicioStore, Store {
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
  String toString() {
    return '''
exercicio: ${exercicio}
    ''';
  }
}
