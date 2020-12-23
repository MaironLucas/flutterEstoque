import 'package:estoque/android/widgets/classSelectionButton.widget.dart';
import 'package:estoque/controllers/items.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class FilterButton extends StatefulWidget {
  final ItensController controller;

  FilterButton(this.controller);

  @override
  _FilterButtonState createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  filterItens() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(
            child: Text('Filtrar classe...'),
          ),
          content: SingleChildScrollView(
            child: Container(
              height: 250,
              width: 20,
              child: Observer(
                builder: (_) {
                  print(
                      'O vetor de classes é ${widget.controller.existentsClasses}');
                  int extraIndex = -1;
                  int tam = widget.controller.existentsClasses.length;
                  return ListView.builder(
                    itemBuilder: (ctxt, index) {
                      if (index == 0) {
                        return ClassSelectionButton(
                            controller: widget.controller,
                            classe1: 'todas',
                            classe2: widget.controller.existentsClasses[index]);
                      } else if ((index < tam - 1) || tam % 2 != 0) {
                        extraIndex += 2;
                        if (extraIndex < tam - 1)
                          return ClassSelectionButton(
                              controller: widget.controller,
                              classe1: widget
                                  .controller.existentsClasses[extraIndex],
                              classe2: widget
                                  .controller.existentsClasses[extraIndex + 1]);
                        else
                          return Container(
                            height: 0.0,
                          );
                      }
                      return ClassSelectionButton(
                        controller: widget.controller,
                        classe1: widget.controller.existentsClasses[index],
                        classe2: 'fim',
                      );
                    },
                    itemCount: tam,
                  );
                },
              ),
            ),
          ),
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
        child: Icon(
          Icons.filter_list,
        ),
        onPressed: filterItens,
      ),
    );
  }
}
