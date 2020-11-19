import 'package:estoque/models/item.model.dart';
import 'package:estoque/settings.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ItemRepository {
  Future<Database> _getDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), DATABASE_NAME),
      onCreate: (db, version) {
        return db.execute(CREATE_PRODUCT_SCRIPT);
      },
      version: 1,
    );
  }

  Future create(ItemModel model) async {
    try {
      final Database db = await _getDatabase();

      await db.insert(
        TABLE_NAME,
        model.toMap(),
      );
    } catch (e) {
      print(e);
      return;
    }
  }

  Future<List<ItemModel>> getItens() async {
    try {
      final Database db = await _getDatabase();
      final List<Map<String, dynamic>> maps = await db.query(TABLE_NAME);

      return List.generate(
        maps.length,
        (index) {
          return ItemModel(
            id: maps[index]['id'],
            classe: maps[index]['classe'],
            peso: maps[index]['peso'],
            qtd: maps[index]['qtd'],
            ano: maps[index]['ano'],
          );
        },
      );
    } catch (e) {
      print(e);
      return new List<ItemModel>();
    }
  }

  Future<ItemModel> getItem(int id) async {
    try {
      final Database db = await _getDatabase();
      final List<Map<String, dynamic>> maps = await db.query(
        TABLE_NAME,
        where: 'id=?',
        whereArgs: [id],
      );

      return ItemModel(
        id: maps[0]['id'],
        classe: maps[0]['classe'],
        peso: maps[0]['peso'],
        qtd: maps[0]['qtd'],
        ano: maps[0]['ano'],
      );
    } catch (e) {
      print(e);
      return new ItemModel();
    }
  }

  Future<List<ItemModel>> filterAsClass(String classe) async {
    try {
      final Database db = await _getDatabase();
      final List<Map<String, dynamic>> maps = await db.query(
        TABLE_NAME,
        where: 'classe LIKE ?',
        whereArgs: ['%$classe%'],
      );

      return List.generate(
        maps.length,
        (i) {
          return ItemModel(
            id: maps[i]['id'],
            classe: maps[i]['classe'],
            peso: maps[i]['peso'],
            qtd: maps[i]['qtd'],
            ano: maps[i]['ano'],
          );
        },
      );
    } catch (e) {
      print(e);
      return new List<ItemModel>();
    }
  }

  Future<ItemModel> isInList(String classe, String peso) async {
    try {
      final Database db = await _getDatabase();
      final List<Map<String, dynamic>> maps = await db.query(
        TABLE_NAME,
        where: 'classe LIKE ? AND peso LIKE ?',
        whereArgs: ['%$classe%', '%$peso%'],
      );

      if (maps.isEmpty)
        return ItemModel(id: 0);
      else
        return ItemModel(
          id: maps[0]['id'],
          classe: maps[0]['classe'],
          peso: maps[0]['peso'],
          qtd: maps[0]['qtd'],
          ano: maps[0]['ano'],
        );
    } catch (e) {
      print(e);
      return ItemModel(id: 0);
    }
  }

  Future update(ItemModel model) async {
    try {
      final Database db = await _getDatabase();

      await db.update(
        TABLE_NAME,
        model.toMap(),
        where: 'id = ?',
        whereArgs: [model.id],
      );
    } catch (e) {
      print(e);
      return;
    }
  }

  Future delete(int id) async {
    try {
      final Database db = await _getDatabase();
      await db.delete(
        TABLE_NAME,
        where: 'id=?',
        whereArgs: [id],
      );
    } catch (e) {
      print(e);
      return;
    }
  }
}
