import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/4,
      height: MediaQuery.of(context).size.height/16,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/16),
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
