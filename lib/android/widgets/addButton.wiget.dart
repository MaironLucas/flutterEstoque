import 'package:flutter/material.dart';

class AddButton extends StatefulWidget {
  @override
  _AddButtonState createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  addItem() {
    showDialog(
      context: context,
      builder: (context) {
        return new AlertDialog(
          title: Center(
            child: Text('Adicionar fardo'),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Classe'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Peso'),
                ),
              ],
            ),
          ),
          actions: [
            FlatButton(onPressed: () {}, child: Text("Cancelar")),
            FlatButton(onPressed: () {}, child: Text("Adicionar")),
          ],
        );
      },
    );
  }

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
        child: Icon(Icons.add),
        onPressed: addItem,
      ),
    );
  }
}
