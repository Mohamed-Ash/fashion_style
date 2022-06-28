import 'package:fashion_style/core/bloc/product_cubit/product_cubit.dart';
import 'package:fashion_style/user/product/product_widget/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class ProductWidget extends StatelessWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit,ProductState>(
      builder: (context,state){
        if(state is ProductLoadedState) {
          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2/3,
              crossAxisCount: 2,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
            itemBuilder: (context,index){
              return ProductItemWidget(
              productModel: state.productState[index],
              );
            },
            itemCount: state.productState.length, 
          );
        } else if(state is ProductLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(child: Text('error 404'));
        }
        
      }
    );
  }

/*   Widget buildProduct(){
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        mainAxisExtent: 1,
        crossAxisSpacing: 3,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context,index){
        return ProductItemWidget(
        productModel: proModel![index],
        );
      }
    );

    ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (
              (context, index) => ProductItemWidget(
                productModel: state.productState[index],)
              ), 
            separatorBuilder:((context, index) => const SizedBox()), 
            itemCount: state.productState.length, 
          );
        } else if(state is ProductLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(child: Text('error'));
        }
        
  } */
}