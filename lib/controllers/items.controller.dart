import 'package:estoque/models/item.model.dart';
import 'package:estoque/repository/item.repository.dart';
import 'package:mobx/mobx.dart';
part 'items.controller.g.dart';

class ItensController = _ItensController with _$ItensController;

abstract class _ItensController with Store {
  @observable
  ObservableList<ItemModel> itens = new ObservableList<ItemModel>();

  @observable
  ObservableList<String> existentsClasses = ObservableList<String>();

  @observable
  int quant = 0;

  @observable
  double peso = 0.0;

  @action
  filterClass(String classe) async {
    quant = 0;
    peso = 0;
    final repository = ItemRepository();
    itens = new ObservableList<ItemModel>();
    var data = await repository.filterAsClass(classe);
    itens.addAll(data);
    itens.forEach((element) {
      quant += element.qtd;
      peso += (double.parse(element.peso) * element.qtd);
    });
  }
}
