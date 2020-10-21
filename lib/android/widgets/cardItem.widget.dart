import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).primaryColor,
            ),
            child: Row(
              children: [
                Container(
                  width: 30,
                  alignment: Alignment.center,
                  child: FlatButton(onPressed: () {}, child: Text("+")),
                ),
                Container(
                  width: 30,
                  alignment: Alignment.center,
                  child: Text(
                    "99",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  height: 50,
                  alignment: Alignment.center,
                  child: FlatButton(onPressed: () {}, child: Text("-")),
                ),
              ],
            ),
          ),
          Container(
            width: 50,
            child: Text(
              "BO1",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
            ),
          ),
          Container(
            width: 85,
            child: Text(
              "60,1Kg",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
