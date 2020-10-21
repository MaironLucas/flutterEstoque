import 'package:estoque/android/theme.theme.dart';
import 'package:estoque/android/views/home.view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerenciador de Estoque',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: HomeView(),
    );
  }
}
