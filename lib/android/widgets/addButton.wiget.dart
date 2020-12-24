import 'package:estoque/android/views/home.view.dart';
import 'package:estoque/controllers/items.controller.dart';
import 'package:estoque/models/item.model.dart';
import 'package:estoque/repository/item.repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddButton extends StatefulWidget {
  final ItensController controller;

  AddButton({@required this.controller});

  @override
  _AddButtonState createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  final _formKey = new GlobalKey<FormState>();
  final _repository = ItemRepository();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final model = ItemModel();
  ItemModel model2 = ItemModel();

  onSubmit() async {
    if (!_formKey.currentState.validate()) {
      return;
    }

    _formKey.currentState.save();

    model2 = await _repository.isInList(model.classe, model.peso);
    if (model2.id == 0) {
      create();
    } else {
      model2.qtd++;
      update();
    }
  }

  update() {
    _repository.update(model2).then((_) {
      onSucess();
    }).catchError((_) => onError());
  }

  create() {
    model.ano = '2020';
    model.qtd = 1;
    model.id = null;

    _repository.create(model).then((_) {
      onSucess();
    }).catchError((_) {
      onError();
    });
  }

  onSucess() {
    widget.controller.classExist();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeView()),
    );
  }

  onError() {
    final snackBar = SnackBar(
      content: Text('Ops, algo deu errado!'),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  addItem() {
    showDialog(
      context: context,
      builder: (context) {
        return new AlertDialog(
          title: Center(
            child: Text('Adicionar fardo'),
          ),
          content: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: ListBody(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    inputFormatters: [LengthLimitingTextInputFormatter(3)],
                    decoration: InputDecoration(
                      labelText: 'Classe',
                      focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2.0,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 3.0,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    onChanged: (value) => model.classe = value,
                    textCapitalization: TextCapitalization.characters,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Classe inválida';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Peso',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2.0,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 3.0,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => model.peso = value,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Peso inválido';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
          actions: [
            FlatButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                "Cancelar",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),
            FlatButton(
              onPressed: onSubmit,
              child: Text(
                "Adicionar",
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height / 16,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius:
            BorderRadius.circular(MediaQuery.of(context).size.width / 16),
      ),
      child: FlatButton(
        child: Icon(Icons.add),
        onPressed: addItem,
      ),
    );
  }
}
