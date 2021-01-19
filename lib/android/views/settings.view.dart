import 'package:estoque/android/widgets/themePicker.widget.dart';
import 'package:estoque/android/widgets/yearSelector.widget.dart';
import 'package:estoque/controllers/items.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  final ItensController controller;

  SettingsView({@required this.controller});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(width / 24),
        child: ListView(
          children: [
            Center(
              child: Text(
                'Selecione uma safra',
                style: TextStyle(
                  fontSize: width / 17,
                ),
              ),
            ),
            YearSelector(controller: controller),
            SizedBox(
              height: width / 24,
            ),
            /*Center(
              child: Text(
                'Selecione um tema',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ThemePicker(),*/
          ],
        ),
      ),
    );
  }
}
