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

  final _$safraAtualAtom = Atom(name: '_ItensController.safraAtual');

  @override
  int get safraAtual {
    _$safraAtualAtom.reportRead();
    return super.safraAtual;
  }

  @override
  set safraAtual(int value) {
    _$safraAtualAtom.reportWrite(value, super.safraAtual, () {
      super.safraAtual = value;
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

  final _$classExistAsyncAction = AsyncAction('_ItensController.classExist');

  @override
  Future classExist() {
    return _$classExistAsyncAction.run(() => super.classExist());
  }

  final _$filterClassAsyncAction = AsyncAction('_ItensController.filterClass');

  @override
  Future filterClass() {
    return _$filterClassAsyncAction.run(() => super.filterClass());
  }

  final _$_ItensControllerActionController =
      ActionController(name: '_ItensController');

  @override
  dynamic incrementQtd(ItemModel model, int index) {
    final _$actionInfo = _$_ItensControllerActionController.startAction(
        name: '_ItensController.incrementQtd');
    try {
      return super.incrementQtd(model, index);
    } finally {
      _$_ItensControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic decrementQtd(ItemModel model, int index) {
    final _$actionInfo = _$_ItensControllerActionController.startAction(
        name: '_ItensController.decrementQtd');
    try {
      return super.decrementQtd(model, index);
    } finally {
      _$_ItensControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic deleteFromDataBase(int index) {
    final _$actionInfo = _$_ItensControllerActionController.startAction(
        name: '_ItensController.deleteFromDataBase');
    try {
      return super.deleteFromDataBase(index);
    } finally {
      _$_ItensControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeClass(String classe) {
    final _$actionInfo = _$_ItensControllerActionController.startAction(
        name: '_ItensController.changeClass');
    try {
      return super.changeClass(classe);
    } finally {
      _$_ItensControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic trocarSafra(int safra) {
    final _$actionInfo = _$_ItensControllerActionController.startAction(
        name: '_ItensController.trocarSafra');
    try {
      return super.trocarSafra(safra);
    } finally {
      _$_ItensControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
actualClass: ${actualClass},
safraAtual: ${safraAtual},
itens: ${itens},
existentsClasses: ${existentsClasses},
quant: ${quant},
peso: ${peso}
    ''';
  }
}
