// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ItensController on _ItensController, Store {
  final _$actualClassAtom = Atom(name: '_ItensController.actualClass');

  @override
  String get actualClass {
    _$actualClassAtom.reportRead();
    return super.actualClass;
  }

  @override
  set actualClass(String value) {
    _$actualClassAtom.reportWrite(value, super.actualClass, () {
      super.actualClass = value;
    });
  }

  final _$itensAtom = Atom(name: '_ItensController.itens');

  @override
  ObservableList<ItemModel> get itens {
    _$itensAtom.reportRead();
    return super.itens;
  }

  @override
  set itens(ObservableList<ItemModel> value) {
    _$itensAtom.reportWrite(value, super.itens, () {
      super.itens = value;
    });
  }

  final _$filterClassAsyncAction = AsyncAction('_ItensController.filterClass');

  @override
  Future filterClass(String classe) {
    return _$filterClassAsyncAction.run(() => super.filterClass(classe));
  }

  @override
  String toString() {
    return '''
actualClass: ${actualClass},
itens: ${itens}
    ''';
  }
}
