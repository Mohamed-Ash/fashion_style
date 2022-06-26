// ignore_for_file: avoid_print, prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:fashion_style/core/sql/sql.dart';
import 'package:fashion_style/user/user_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FavoritePage extends UserInterface {
  CreatSQl createSQl = CreatSQl();
  
  Future<List<Map>> readData()async{
    List<Map> response = await  createSQl.readData("SELECT * FROM 'product' ");
    return response;
  }
  FavoritePage({Key? key}) : super(key: key);
  
  @override
  Widget buildBody(BuildContext context) {
    return ListView(

      children: [
        MaterialButton(
          child: Text('delete database'),
          onPressed: ()async{
            await createSQl.myDeleteData();
          }
        ),
        FutureBuilder(
          future: readData(),
          builder: (BuildContext context, AsyncSnapshot<List<Map>> snapshot){
            if(snapshot.hasData){
              return ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context,index){
                  return ListTile(
                    leading: Text("${snapshot.data![index]['name']}"),
                    title:  Text("${snapshot.data![index]['title']}"),
                    subtitle: Text("${snapshot.data![index]['price']}"),
                    );
                }
              );
            }
             return CircularProgressIndicator();
          }
        ),
      ],
    );
  }

  @override
  String get title => 'favorite page' ;


}


















/*  MaterialButton(
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
              List<Map> response = await createSQl.readData("DELETE FROM 'product' WHERE id = 23 ");
              print("$response");
            } ,
            child: const Text('insert Data'), 
          ), */