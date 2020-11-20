import 'package:estoque/models/item.model.dart';
import 'package:flutter/material.dart';

class ClassSelectionButton extends StatelessWidget {
  final ItemModel model1, model2;

  ClassSelectionButton({@required this.model1, @required this.model2});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton(
            onPressed: () {},
            child: Text(
              model1.classe,
              style: TextStyle(fontSize: 25),
            ),
            color: Theme.of(context).primaryColor,
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              model2.classe,
              style: TextStyle(fontSize: 25),
            ),
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
