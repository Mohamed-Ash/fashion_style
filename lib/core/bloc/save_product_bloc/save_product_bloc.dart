import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sqflite/sqflite.dart';

part 'save_product_bloc_event.dart';
part 'save_product_bloc_state.dart';

class SaveproductblocBloc extends Bloc<SaveproductblocEvent, SaveproductblocState> {
  SaveproductblocBloc() : super(SaveproductblocInitial()) {
    on<SaveproductblocEvent>((event, emit) {
    });
  }
  Database? database;

  void insertDatabase()async{
    database = await openDatabase(
      'demo.db',
      version: 1,
      onCreate: (database, version )async{
        await database.execute(
          'CREATE TABLE product (id INTEGER PRIMARY KEY , name TEXT , title TEXT , price TEXT , value  INTEGER )' 
        );
      },
      onOpen: (database){
        
      } 

    );
  }

}
