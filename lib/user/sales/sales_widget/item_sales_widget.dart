// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print
import 'package:flutter/material.dart';

import 'package:fashion_style/core/data/model/all_sales_model.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:fashion_style/core/theme/fonts/style.dart';

// ignore: must_be_immutable
class ItemSalesWidget extends StatelessWidget {
  AllSalesModel? allSalesModel;

  static const   String urlImage = 'https://image.shutterstock.com/image-photo/time-go-full-length-handsome-600w-757863334.jpg';

  ItemSalesWidget({
    Key? key,
    this.allSalesModel
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('test print ${allSalesModel!.id}');
        Navigator.pushNamed(context,profileSales,arguments: allSalesModel);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: ColorsTheme.wight,
            borderRadius: BorderRadius.circular(8)
          ),
          width: double.infinity,
          height: 100,
          child: Padding(
            padding:  const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const CircleAvatar(
                  maxRadius: 45,
                  minRadius: 45,
                  backgroundImage: NetworkImage(urlImage)
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${allSalesModel!.name}',
                        style: getBoldStyle(color: ColorsTheme.black),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${allSalesModel!.description}',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style:  getRegulerStyle(color: ColorsTheme.gray,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
