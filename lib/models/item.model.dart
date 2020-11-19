class ItemModel {
  int id = 0;
  String classe = '';
  String peso = '0';
  int qtd = 0;
  String ano = '2020';

  ItemModel({
    this.id,
    this.classe,
    this.peso,
    this.qtd,
    this.ano,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'classe': classe,
      'peso': peso,
      'qtd': qtd,
      'ano': ano,
    };
  }
}
