import 'package:estoque/models/item.model.dart';
import 'package:estoque/repository/item.repository.dart';
import 'package:mobx/mobx.dart';
part 'items.controller.g.dart';

class ItensController = _ItensController with _$ItensController;

abstract class _ItensController with Store {
  @observable
  String actualClass = 'todas';

  @observable
  ObservableList<ItemModel> itens = new ObservableList<ItemModel>();

  @observable
  ObservableList<String> existentsClasses = ObservableList<String>();

  @observable
  int quant = 0;

  @observable
  double peso = 0.0;

  @action
  classExist() async {
    final repository = ItemRepository();
    existentsClasses = ObservableList<String>();
    var data = await repository.classExistents();
    existentsClasses.addAll(data);
  }

  @action
  filterClass() async {
    quant = 0;
    peso = 0;
    final repository = ItemRepository();
    itens = new ObservableList<ItemModel>();
    var data = await repository.filterAsClass(actualClass);
    itens.addAll(data);
    itens.forEach((element) {
      quant += element.qtd;
      peso += (double.parse(element.peso) * element.qtd);
    });
  }

  @action
  incrementQtd(ItemModel model, int index) {
    final repository = ItemRepository();
    ObservableList<ItemModel> itens2;
    itens2 = itens;
    itens = new ObservableList<ItemModel>();
    model.qtd++;
    repository.update(model);
    itens2[index] = model;
    itens = itens2;
    quant++;
    peso += double.parse(model.peso);
  }

  @action
  decrementQtd(ItemModel model, int index) {
    final repository = ItemRepository();
    ObservableList<ItemModel> itens2;
    itens2 = itens;
    itens = new ObservableList<ItemModel>();
    model.qtd--;
    repository.update(model);
    itens2[index] = model;
    itens = itens2;
    quant--;
    peso -= double.parse(model.peso);
  }

  @action
  deleteFromDataBase(int index) {
    final repository = ItemRepository();
    repository.delete(itens[index].id);
    quant -= itens[index].qtd;
    peso -= double.parse(itens[index].peso) * itens[index].qtd;
    itens.removeAt(index);
  }

  @action
  changeClass(String classe) {
    actualClass = classe;
  }
}
