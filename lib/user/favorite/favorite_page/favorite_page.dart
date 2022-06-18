// ignore_for_file: avoid_print

import 'package:fashion_style/core/sql/sql.dart';
import 'package:fashion_style/user/user_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FavoritePage extends UserInterface {
  CreatSQl createSQl = CreatSQl();
  
  FavoritePage({Key? key}) : super(key: key);
  
  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        children: [
          MaterialButton(
            onPressed:()async{
              int response = await createSQl.insertData(
                "INSERT INTO 'product' ('name','title','price') VALUES ('note','tow', 'three')"
                );
              print(response);  
            },
            child: const Text('insert Data'), 
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed:()async{
              List<Map> response = await createSQl.readData("SELECT * FROM 'product'");
              print(response);
            } ,
            child: const Text('insert Data'), 
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed:()async{
              List<Map> response = await createSQl.readData("DELETE FROM 'product' WHERE id = 10 ");
              print("$response");
            } ,
            child: const Text('insert Data'), 
          ),
        ],
   ),
    );
  }

  @override
  String get title => 'favorite page' ;


}