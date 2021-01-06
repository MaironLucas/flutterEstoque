import 'package:estoque/android/views/settings.view.dart';
import 'package:estoque/android/widgets/addButton.wiget.dart';
import 'package:estoque/android/widgets/cardGenerator.widget.dart';
import 'package:estoque/android/widgets/descriptionBar.widget.dart';
import 'package:estoque/android/widgets/filterButton.widget.dart';
import 'package:estoque/android/widgets/resultCard.widget.dart';
import 'package:estoque/controllers/items.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = ItensController();

  @override
  void initState() {
    super.initState();
    controller.filterClass();
    controller.classExist();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height / 11.8,
          title: Text("Gerenciador de estoque"),
          centerTitle: true,
          leading: FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => SettingsView(controller: controller),
                  ));
            },
            child: Icon(Icons.settings),
          ),
        ),
        body: Container(
          alignment: Alignment.topRight,
          //color: Theme.of(context).accentColor,
          height: double.infinity,
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FilterButton(controller),
                    SizedBox(
                      width: 20,
                    ),
                    AddButton(controller: controller),
                  ],
                ),
              ),
              DescriptionBar(),
              CardGenerator(controller: controller),
              ResultCard(
                controller: controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
