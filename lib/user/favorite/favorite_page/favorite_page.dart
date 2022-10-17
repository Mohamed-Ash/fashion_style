// ignore_for_file: avoid_print, prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:fashion_style/core/data/model/get_product.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/core/sql/sql.dart';
import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:fashion_style/core/theme/fonts/style.dart';
import 'package:fashion_style/user/user_interface.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FavoritePage extends UserInterface {
  late ProductModel productModel;

  CreatSQl createSQl = CreatSQl();

  String urlImage = 'https://images.unsplash.com/photo-1613915617430-8ab0fd7c6baf?ixlib=rb-1.2.1&raw_url=true&q=60&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500';

  Future<List<Map>> readData()async{
    List<Map> response = await  createSQl.readData("SELECT * FROM 'product' ");
    return response;
  }
  FavoritePage({Key? key}) : super(key: key);
  
  @override
  Widget buildBody(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          MaterialButton(
            child: Text('delete database'),
            onPressed: ()async{
              await createSQl.myDeleteData();
            }
          ), 
          /* MaterialButton(
              onPressed:()async{
                List<Map> response = await createSQl.readData("DELETE FROM 'product' WHERE id = 1 ");
                print("$response");
              } ,
              child: const Text('insert Data'), 
            ), */
          FutureBuilder(
            future: readData(),
            builder: (BuildContext context, AsyncSnapshot<List<Map>> snapshot){
              if(snapshot.hasData){
                return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context,index){
                    return InkWell(
                      onTap: ()async{
                        await Navigator.pushNamed(context, previewProduct, );
                      },
                      child: Center(
                        child: Stack(
                          children: [
                            Container(
                              width: 160,
                              height: 220,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              // alignment: Alignment.topCenter,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Container(
                                          width: 160,
                                          height: 180,
                                        decoration: BoxDecoration(
                                          borderRadius:BorderRadius.circular(8),
                                          color: ColorsTheme.black,
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: NetworkImage(
                                              // urlImage
                                              '${snapshot.data![index]['image']}'
                                              // '${widg1et.productModel.imagePath}'
                                              // 'https://media.istockphoto.com/photos/image-of-brunette-in-fake-fur-coat-with-hood-picture-id535313567?k=20&m=535313567&s=612x612&w=0&h=xU51bRMrO0IV_uhBeys4orEUjktUbwzJVszpNgikKOY='
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                        color: Colors.black38,
                                        borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '${snapshot.data![index]['name']}',
                                            style: getBoldStyle(color: ColorsTheme.wight),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(8, 3, 0, 0),
                                    child: Text(
                                      '${snapshot.data![index]['title']}',
                                      style: getSemiBoldStyle(color: ColorsTheme.gray),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(8, 3, 0, 0),
                                    child: Text(
                                      '\$ ${snapshot.data![index]['price']}',
                                        style: getRegulerStyle(color: ColorsTheme.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                             Positioned(
                              height: 38,
                              right: 10,
                              child: IconButton(
                                icon: Icon(
                                  Icons.favorite
                                ),
                                color: Colors.red,
                                onPressed: ()async {
                                 
                                  int response = await createSQl.deleteAllDatabase("DELETE FROM 'product' WHERE id = ${snapshot.data![index]['id']} ");
                                    print("==================== response ================");
                                    print(response);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                );
              }
               return Center(child: CircularProgressIndicator());
            }
          ),
        ],
      ),
    );
  }

  @override
  String get title => 'favorite page' ;


}



/* 
  ListTile(
    leading: Text("${snapshot.data![index]['name']}"),
    title:  Text("${snapshot.data![index]['title']}"),
    subtitle: Text("${snapshot.data![index]['price']}"),
  );
 */














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