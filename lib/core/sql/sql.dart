// ignore_for_file: avoid_print

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class CreatSQl {
  static Database? _database;

  Future<Database?> get db async{
    if(_database == null){
      _database = await initialDatabase();
      return _database;
    }else{
      return _database;
    }
  }

  initialDatabase()async{
    String databasePath = await getDatabasesPath();
    String path = join(databasePath , 'demo.db');
    Database myDatabase = await openDatabase(
      path, 
      onCreate: _createDatabase , 
      version: 1,
      onUpgrade: _onUpgrade,
      
    );
    return myDatabase; 
  }
  
  _onUpgrade(Database db, int oldVersion, int newVersion ){
    print('===================== UPGRADE DATEBASE ============================');
  }

  _createDatabase(Database db, int version)async{
    await db.execute(
      'CREATE TABLE product ("id" INTEGER  NOT NULL PRIMARY KEY  AUTOINCREMENT , "name" TEXT , "title" TEXT , "price" TEXT )'
      );
    print('===================== CREATE DATEBASE AND TABLE ============================');
  }

  readData(String sql)async{
    Database? mydb = await db;
    List<Map> response = await mydb!.rawQuery(sql);
    return response;
  }

   insertData(String sql)async{
    Database? mydb  = await db;
    int response = await mydb!.rawInsert(sql);
    return response;
  }

   deleteAllDatabase(String sql)async{
    Database? mydb = await db;
    int response = await mydb!.rawDelete(sql);
    return response;
  }

  myDeleteData()async{
    String databasePath = await getDatabasesPath();
    String path = join(databasePath + 'demo.db');
    return deleteDatabase(path);
  }
}

