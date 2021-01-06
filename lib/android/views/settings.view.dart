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
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Center(
              child: Text(
                'Selecione uma safra',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            YearSelector(controller: controller),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Selecione um tema',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ThemePicker(),
          ],
        ),
      ),
    );
  }
}
