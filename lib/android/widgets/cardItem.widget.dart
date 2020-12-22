import 'package:estoque/controllers/items.controller.dart';
import 'package:estoque/models/item.model.dart';
import 'package:estoque/repository/item.repository.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final ItemModel model;
  final ItensController controller;

  CardItem({@required this.model, @required this.controller});

  final _repository = ItemRepository();

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
            width: width / 3.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width / 30),
              color: Theme.of(context).primaryColor,
            ),
            child: Row(
              children: [
                Container(
                  width: width / 12,
                  alignment: Alignment.center,
                  child: FlatButton(
                      onPressed: () {
                        model.qtd++;
                        _repository.update(model);
                        controller.filterClass("");
                      },
                      child: Text("+")),
                ),
                Container(
                  width: width / 12,
                  alignment: Alignment.center,
                  child: Text(
                    model.qtd.toString(),
                    style: TextStyle(
                      fontSize: width / 12,
                    ),
                  ),
                ),
                Container(
                  width: width / 12,
                  alignment: Alignment.center,
                  child: FlatButton(
                      onPressed: () {
                        model.qtd--;
                        _repository.update(model);
                        controller.filterClass("");
                      },
                      child: Text("-")),
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
                color: Colors.black87,
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
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
