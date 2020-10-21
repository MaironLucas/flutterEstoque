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

  @action
  filterClass(String classe) async {
    final repository = ItemRepository();
    itens = new ObservableList<ItemModel>();
    if (actualClass == 'todas') {
      var data = await repository.filterAsClass('');
      itens.addAll(data);
    } else {
      var data = await repository.filterAsClass(classe);
      itens.addAll(data);
    }
  }
}
