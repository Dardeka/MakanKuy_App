import 'package:app_makankuy/models/shop.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DatabaseService {
  static Database? _db;
  static final DatabaseService instance = DatabaseService._constructor();

  final String _shopsTableName = "Shops";
  final String _shopsIdColumnName = "id";
  final String _shopsNameColumnName = "Name";
  // final String _shopsOwnerColumnName = "Owner";
  // final String _shopsAddressColumnName = "address";
  // final String _shopsPhoneNumColumnName = "phoneNum";

  DatabaseService._constructor();


  Future<Database> get database async{
    if(_db != null) return _db!;
    _db = await getDatabase();
    return _db!;
  }

  Future<Database> getDatabase() async{
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;

    final databaseDirPath = await getDatabasesPath();
    final databasePath = join(databaseDirPath, "shop_db.db");
    final database = await openDatabase(
      databasePath,
      version: 1,
      onCreate: (db, version) {
        print('Creating Shops table');
        db.execute('''
          CREATE TABLE $_shopsTableName (
            $_shopsIdColumnName INTEGER PRIMARY KEY,
            $_shopsNameColumnName TEXT NOT NULL

          )
        ''');
      },
    );
    return database;
  }


  void addShop(
    String shopName, 
    // String ownerName, 
    // String address, 
    // String phoneNum
    ) async{
    final db = await database;
    await db.insert(
      _shopsTableName, 
      {
        _shopsNameColumnName: shopName
        // _shopsOwnerColumnName: ownerName,
        // _shopsAddressColumnName: address,
        // _shopsPhoneNumColumnName: phoneNum,
      }
    );
    print('Shop inserted with ID');
  }

  void deleteShop(String id) async{
    final db = await database;
    await db.delete(
      _shopsTableName,
      where: 'id = ?',
      whereArgs: [
        id,
      ]
    );
  }

  Future<List<Shops>> getShops() async {
    final db = await database;
    final data = await db.query(_shopsTableName);

    // Periksa isi data dari database untuk debugging
    print('Data dari database: $data'); 

    // Map data ke dalam model Shops
    final shops = data.map((e) {
      // Pastikan setiap field memiliki tipe data yang sesuai
      return Shops(
        id: (e[_shopsIdColumnName] ?? 0)as int, // Pastikan ini berupa int
        shopName: (e[_shopsNameColumnName] ?? 'Unknown') as String, // Pastikan ini berupa String
      );
    }).toList();
    print('Mapped shops: $shops');
    return shops;
  }



}
