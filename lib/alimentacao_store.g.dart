// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alimentacao_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AlimentacaoStore on _AlimentacaoStore, Store {
  late final _$receitasAtom =
      Atom(name: '_AlimentacaoStore.receitas', context: context);

  @override
  List<String> get receitas {
    _$receitasAtom.reportRead();
    return super.receitas;
  }

  @override
  set receitas(List<String> value) {
    _$receitasAtom.reportWrite(value, super.receitas, () {
      super.receitas = value;
    });
  }

  late final _$_AlimentacaoStoreActionController =
      ActionController(name: '_AlimentacaoStore', context: context);

  @override
  void setReceitas(String objetivo) {
    final _$actionInfo = _$_AlimentacaoStoreActionController.startAction(
        name: '_AlimentacaoStore.setReceitas');
    try {
      return super.setReceitas(objetivo);
    } finally {
      _$_AlimentacaoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
receitas: ${receitas}
    ''';
  }
}
