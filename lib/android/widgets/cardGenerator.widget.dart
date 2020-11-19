import 'package:estoque/android/widgets/cardItem.widget.dart';
import 'package:estoque/controllers/items.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CardGenerator extends StatefulWidget {
  @override
  _CardGeneratorState createState() => _CardGeneratorState();
}

class _CardGeneratorState extends State<CardGenerator> {
  final controller = ItensController();

  @override
  void initState() {
    super.initState();
    controller.filterClass("");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.625,
      child: Observer(
        builder: (_) => ListView.builder(
          itemBuilder: (ctx, index) {
            return CardItem(model: controller.itens[index]);
          },
          itemCount: controller.itens.length,
        ),
      ),
    );
  }
}
