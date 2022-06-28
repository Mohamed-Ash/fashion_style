import 'package:fashion_style/core/data/model/get_product.dart';
import 'package:fashion_style/core/form_fields/defaulte_form_field.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:fashion_style/core/theme/fonts/style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PreviewProductWidget extends StatelessWidget {
  ProductModel? productModel;
  String urlImage = 'https://images.unsplash.com/photo-1613915617430-8ab0fd7c6baf?ixlib=rb-1.2.1&raw_url=true&q=60&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500';
  
  PreviewProductWidget({Key? key, required this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top:12,
          left: 12,
          right: 12,
          bottom: 50
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(  
                child: Container(
                  width:400,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                      color: ColorsTheme.black,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        urlImage
                        // '${widg1et.productModel.imagePath}'
                        // 'https://media.istockphoto.com/photos/image-of-brunette-in-fake-fur-coat-with-hood-picture-id535313567?k=20&m=535313567&s=612x612&w=0&h=xU51bRMrO0IV_uhBeys4orEUjktUbwzJVszpNgikKOY='
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '${productModel!.name}',
                style: getBoldStyle(color: ColorsTheme.black),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '${productModel!.description}',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style:  getRegulerStyle(color: ColorsTheme.gray,),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '${productModel!.description}',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style:  getRegulerStyle(color: ColorsTheme.gray,),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '${productModel!.description}',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style:  getRegulerStyle(color: ColorsTheme.gray,),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '${productModel!.description}',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style:  getRegulerStyle(color: ColorsTheme.gray,),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '${productModel!.description}',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style:  getRegulerStyle(color: ColorsTheme.gray,),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '${productModel!.description}',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style:  getRegulerStyle(color: ColorsTheme.gray,),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '${productModel!.description}',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style:  getRegulerStyle(color: ColorsTheme.gray,),
              ),
              const SizedBox(
                height: 10,
              ),
                Text('${productModel!.insertedon}'),
              const SizedBox(
                height: 10,
              ),
                Text('${productModel!.price}'),
              const SizedBox(
                height: 10,
              ),
                Text('${productModel!.id}'),
              const SizedBox(
                height: 10,
              ),
              //  Text('${productModel.id}'),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, testpage);
                },
                child: DefaulteFormField.container(
                  child: const Center(child: Text('Add to cart')) 
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, payments);
                },
                child: DefaulteFormField.container(
                  child: const Center(child: Text('buy now')) 
                ),
              ),
            ],
          ),
      ),
    );
  }
}