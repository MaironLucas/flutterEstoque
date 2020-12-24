import 'package:estoque/controllers/items.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class ClassSelectionButton extends StatelessWidget {
  final String classe1, classe2;
  final ItensController controller;

  ClassSelectionButton(
      {@required this.classe1,
      @required this.classe2,
      @required this.controller,});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: EdgeInsets.all(5),
      child: Observer(
              builder: (_)=> Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(
              onPressed: () {
                controller.changeClass(classe1);
                controller.filterClass();
              },
              child: Text(
                classe1,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              color: classe1 == controller.actualClass
                  ? Colors.yellow
                  : Theme.of(context).primaryColor,
            ),
            classe2 != 'fim'
                ? FlatButton(
                    onPressed: () {
                      controller.changeClass(classe2);
                      controller.filterClass();
                    },
                    child: Text(
                      classe2,
                      style: TextStyle(fontSize: 25),
                    ),
                    color: classe2 == controller.actualClass
                        ? Colors.yellow
                        : Theme.of(context).primaryColor,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
