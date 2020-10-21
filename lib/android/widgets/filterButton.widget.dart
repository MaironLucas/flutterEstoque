import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: FlatButton(
        child: Icon(
          Icons.filter_list,
        ),
        onPressed: () {},
      ),
    );
  }
}
