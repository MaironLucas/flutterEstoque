import 'package:flutter/material.dart';

class ThemePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 100,
          child: FlatButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dia",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
                Icon(
                  Icons.brightness_high,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          child: FlatButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Noite",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
                Icon(
                  Icons.brightness_low,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
