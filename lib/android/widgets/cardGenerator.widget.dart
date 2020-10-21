import 'package:estoque/android/widgets/cardItem.widget.dart';
import 'package:estoque/controllers/items.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CardGenerator extends StatelessWidget {
  final controller = ItensController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 349,
      child: Observer(
        builder: (_) => ListView.builder(
          itemBuilder: (ctx, index) {
            return CardItem();
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
