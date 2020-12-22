import 'package:flutter/material.dart';

class DescriptionBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(left: 10, top: 10),
      child: Row(
        children: [
          Text(
            "Quantidade",
            style: TextStyle(fontSize: width / 16),
          ),
          SizedBox(
            width: width / 5.8,
          ),
          Text(
            "Classe",
            style: TextStyle(fontSize: width / 16),
          ),
          SizedBox(
            width: width / 6.1,
          ),
          Text(
            "Peso",
            style: TextStyle(fontSize: width / 16),
          ),
        ],
      ),
    );
  }
}
