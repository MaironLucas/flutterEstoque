import 'package:estoque/controllers/items.controller.dart';
import 'package:estoque/models/item.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CardItem extends StatelessWidget {
  final ItemModel model;
  final ItensController controller;
  final int index;

  CardItem(
      {@required this.model, @required this.controller, @required this.index});

  increment() {
    if (model.qtd < 99) {
      controller.incrementQtd(model, index);
    }
  }

  decrement() {
    if (model.qtd > 1) {
      controller.decrementQtd(model, index);
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: height / 12,
            //width: width / 3.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width / 30),
                color: Theme.of(context).primaryColor,
                border: Border.all(
                  width: 3,
                  color: Colors.black,
                )),
            child: Row(
              children: [
                Container(
                  width: width / 12,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(width / 30),
                    /*
                    border: Border.all(
                      width: 3,
                      color: Colors.black,
                    ),
                    */
                  ),
                  child: Center(
                    child: FlatButton(
                      onPressed: increment,
                      child: Text(
                        "+",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 50, //width: width / 12,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    //borderRadius: BorderRadius.circular(width / 30),
                    border: Border(
                      left: BorderSide(
                        color: Colors.black,
                        width: 3.0,
                      ),
                      right: BorderSide(
                        color: Colors.black,
                        width: 3.0,
                      ),
                    ),
                  ),
                  child: Observer(
                    builder: (_) => Text(
                      controller.itens[index].qtd.toString(),
                      style: TextStyle(
                        fontSize: width / 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width / 30),
                    /*
                    border: Border.all(
                      width: 3,
                      color: Colors.black,
                    ),
                    */
                  ),
                  width: width / 12,
                  alignment: Alignment.center,
                  child: SizedBox.expand(
                    child: FlatButton(
                      disabledColor: Theme.of(context).primaryColor,
                      onPressed: decrement,
                      child: Text(
                        "-",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width / 7,
            child: Text(
              model.classe,
              style: TextStyle(
                fontSize: width / 12,
                fontWeight: FontWeight.w700,
                //color: Colors.black87,
              ),
            ),
          ),
          Container(
            width: width / 4.2,
            child: Text(
              model.peso,
              style: TextStyle(
                fontSize: width / 12,
                fontWeight: FontWeight.w700,
                //color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
