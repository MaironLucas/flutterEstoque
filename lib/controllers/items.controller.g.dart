// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ItensController on _ItensController, Store {
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

  final _$existentsClassesAtom =
      Atom(name: '_ItensController.existentsClasses');

  @override
  ObservableList<String> get existentsClasses {
    _$existentsClassesAtom.reportRead();
    return super.existentsClasses;
  }

  @override
  set existentsClasses(ObservableList<String> value) {
    _$existentsClassesAtom.reportWrite(value, super.existentsClasses, () {
      super.existentsClasses = value;
    });
  }

  final _$quantAtom = Atom(name: '_ItensController.quant');

  @override
  int get quant {
    _$quantAtom.reportRead();
    return super.quant;
  }

  @override
  set quant(int value) {
    _$quantAtom.reportWrite(value, super.quant, () {
      super.quant = value;
    });
  }

  final _$pesoAtom = Atom(name: '_ItensController.peso');

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

  final _$filterClassAsyncAction = AsyncAction('_ItensController.filterClass');

  @override
  Future filterClass(String classe) {
    return _$filterClassAsyncAction.run(() => super.filterClass(classe));
  }

  @override
  String toString() {
    return '''
itens: ${itens},
existentsClasses: ${existentsClasses},
quant: ${quant},
peso: ${peso}
    ''';
  }
}
