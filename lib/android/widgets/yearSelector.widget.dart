import 'package:estoque/controllers/items.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class YearSelector extends StatelessWidget {
  final ItensController controller;

  YearSelector({@required this.controller});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).primaryColor,
      ),
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          int data = DateTime.now().year - index;
          return Observer(
            builder: (_) => Container(
              padding: EdgeInsets.all(3),
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: data == controller.safraAtual
                    ? Colors.yellow
                    : Theme.of(context).primaryColor,
              ),
              child: FlatButton(
                child: Text(
                  '$data',
                  style: TextStyle(fontSize: 40),
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
