import 'package:fashion_style/core/data/model/all_sales_model.dart';
import 'package:fashion_style/core/form_fields/defaulte_form_field.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:fashion_style/core/theme/fonts/style.dart';
import 'package:flutter/material.dart';

class ItemProfileSalesWidget extends StatelessWidget {
  final AllSalesModel allSalesModel;

  const ItemProfileSalesWidget({Key? key, required this.allSalesModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
       padding: const EdgeInsets.only(
         top:12,
         left: 12,
         right: 12,
         ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(  
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: ColorsTheme.wight,
                  image: const DecorationImage(
                  image: AssetImage('assets/images/userrr.png')
                  ), 
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${allSalesModel.name}',
              style: getBoldStyle(color: ColorsTheme.black),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${allSalesModel.description}',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style:  getRegulerStyle(color: ColorsTheme.gray,),
            ),
            const SizedBox(
              height: 10,
            ),
             Text('${allSalesModel.workPlace}'),
            const SizedBox(
              height: 10,
            ),
            // const Text('style'),
            const SizedBox(
              height: 10,
            ),
            const Text('adpoimnt mint'),
            const SizedBox(
              height: 10,
            ),
            const Text('price'),
            const SizedBox(
              height: 10,
            ),
             Text('${allSalesModel.phoneNumber}'),
            const SizedBox(
              height: 10,
            ),
             Text('${allSalesModel.id}'),
            const SizedBox(
              height: 10,
            ),
             Text('${allSalesModel.timeWork}'),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, testpage);
              },
              child: DefaulteFormField.container(
                child: const Center(child: Text('apply')) 
              ),
            ),

          ],
        ),
     ),
    );
  }
}