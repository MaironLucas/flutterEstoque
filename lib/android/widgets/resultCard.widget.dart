import 'package:estoque/controllers/items.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ResultCard extends StatelessWidget {
  final ItensController controller;

  ResultCard({@required this.controller});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border(
          top: BorderSide(
            color: Colors.black,
            width: 3,
          ),
        ),
      ),
      height: height / 8,
      width: double.infinity,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              "Total",
              style: TextStyle(fontSize: width / 16),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Observer(
                  builder: (_) => Text(
                    controller.quant.toString(),
                    style: TextStyle(
                      fontSize: width / 8.7,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Observer(
                  builder: (_) => Text(
                    '${controller.peso}  Kg',
                    style: TextStyle(
                      fontSize: width / 8.7,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
