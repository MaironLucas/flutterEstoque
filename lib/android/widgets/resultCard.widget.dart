import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: EdgeInsets.only(left: 10, right: 10),
      color: Colors.grey[200],
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              "Total",
              style: TextStyle(fontSize: 17),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "30",
                  style: TextStyle(
                    fontSize: 40,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Text(
                  "60,1Kg",
                  style: TextStyle(
                    fontSize: 40,
                    color: Theme.of(context).primaryColor,
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
