import 'package:estoque/android/widgets/cardItem.widget.dart';
import 'package:estoque/controllers/items.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CardGenerator extends StatefulWidget {
  final ItensController controller;

  CardGenerator({@required this.controller});

  @override
  _CardGeneratorState createState() => _CardGeneratorState();
}

class _CardGeneratorState extends State<CardGenerator> {
  deleteItem(int index) {
    widget.controller.deleteFromDataBase(index);
    widget.controller.classExist();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.625,
      child: Observer(
        builder: (_) => ListView.builder(
          itemBuilder: (ctx, index) {
            return Dismissible(
                background: Container(
                  color: Colors.red,
                  child: Row(
                    children: [
                      Icon(
                        Icons.delete,
                      ),
                      Icon(
                        Icons.delete,
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
                key: ValueKey(widget.controller.itens[index]),
                onDismissed: (direction) {
                  setState(() {
                    deleteItem(index);
                  });
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text("Item Removido")));
                },
                child: CardItem(
                    index: index,
                    model: widget.controller.itens[index],
                    controller: widget.controller));
          },
          itemCount: widget.controller.itens.length,
        ),
      ),
    );
  }
}
