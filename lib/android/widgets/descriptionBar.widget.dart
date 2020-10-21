import 'package:flutter/material.dart';

class DescriptionBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 10),
      child: Row(
        children: [
          Text(
            "Quantidade",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 72,
          ),
          Text(
            "Classe",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 64,
          ),
          Text(
            "Peso",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
