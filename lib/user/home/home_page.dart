// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:fashion_style/core/data/web_service/post_product_web_service.dart';
import 'package:fashion_style/core/service/auth_service.dart';
import 'package:fashion_style/user/carousel_slider/carousel_slider_page.dart';
import 'package:fashion_style/user/product/product_page/product_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  PostProductWebSerivice postProductWebSerivice = PostProductWebSerivice();

  HomePage({Key? key}) : super(key: key);

    Future postProduct(context) async{
    try{
      Response response = await Dio().post(
        'http://jack07-001-site1.htempurl.com/api/Products/AddProduct',
        data: {
          "id": "0",
          "name": "jack",
          "description": "jack jack",
          "price": 22.44
        }
      ); 
      print(response.statusCode);
      if (response.statusCode == 200) {
        
       print('8888888test id********  ' +  response.data["id"]);
        print('تم رفع المنج بنجاح'); 
      }else{
        print('error missing id');
      }
    }catch(e){
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    print(AuthService().statusMessage);
    return  Card(
      child: ListView(
        physics: const  NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          TextButton(
            onPressed: (){
              postProduct(context);
            },
            child: const Text('post product'),
          ),
          const CarouselSliderPage(),
          const SizedBox(height: 10),
          Text('${AuthService().statusMessage}'),
          const ProductPage(),
        ],
      ),
    );
    /* Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
      // clipBehavior: Clip.none,
      // physics: PageScrollPhysics(),
        children: [
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, testpage);
            },
            child: const CarouselSliderPage(),
          ),
          const SizedBox(
            height: 10,
          ),
         
        ],
      ),
    ); */
  }



/*   Widget productItem(){
    return  Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: ColorsTheme.wight,
            borderRadius: BorderRadius.circular(8)
          ),
          alignment: Alignment.topCenter,
          width: 235,
          height: 400,
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Image(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1629374029669-aab2f060553b?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZmFzaGlvbiUyMG1vZGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500'
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Zara')
            ],
          ),
        ),
        Positioned(
          right: 10,
          // top: 6,
          bottom: 45,
          // right: 6.5,
          child:
            IconButton(
            icon: Icon(
              select ? iconselect : iconUnSelect
            ),
            onPressed: () {
              setState(() {
                select = !select ;
              });
            },
          ),
        ),
      ],
    );
  } */
}