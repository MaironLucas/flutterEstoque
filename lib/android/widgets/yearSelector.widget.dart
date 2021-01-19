import 'package:estoque/controllers/items.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class YearSelector extends StatelessWidget {
  final ItensController controller;

  YearSelector({@required this.controller});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width / 36),
        color: Theme.of(context).primaryColor,
      ),
      height: width / 6.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          int data = DateTime.now().year - index;
          return Observer(
            builder: (_) => Container(
              padding: EdgeInsets.all(width / 70),
              width: width / 3.27,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width / 36),
                color: data == controller.safraAtual
                    ? Colors.yellow
                    : Theme.of(context).primaryColor,
              ),
              child: FlatButton(
                child: Text(
                  '$data',
                  style: TextStyle(fontSize: width / 9.5),
                ),
                onPressed: () {
                  controller.trocarSafra(data);
                  controller.filterClass();
                },
              ),
            ),
          );
        },
        itemCount: DateTime.now().year - (DateTime.now().year - 5),
      ),
    );
  }
}
