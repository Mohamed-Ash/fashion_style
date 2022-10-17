import 'package:fashion_style/core/form_fields/defaulte_form_field.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:fashion_style/core/theme/fonts/style.dart';
import 'package:fashion_style/user/user_interface.dart';
import 'package:flutter/material.dart';

class PaymentWhenReceivingPage extends UserInterface {
  const PaymentWhenReceivingPage({Key? key}) : super(key: key);


  @override
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            height: 180,
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: [
                    Text(
                      'Freight to:  ',
                      style: getMediumStyle(color: Colors.grey),
                    ),
                    const Text(
                      ' 6 Dr. Ibrahim Nagy St.,Al Sahel,shoubra Cairo',
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'delivery day: ',
                      style: getMediumStyle(color: Colors.grey ),
                    ),
                    Text(
                      'July 1, 2022',
                      style: getBoldStyle(color: Colors.green),
                    ),
                  ],
                ),
                const Divider(height: 1.5,color: Colors.green),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'item',
                      style: getMediumStyle(color: Colors.grey),
                    ),
                    Text(
                      '\$ 76 ',
                      style: getMediumStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping and handling',
                      style: getMediumStyle(color: Colors.grey),
                    ),
                    Text(
                      '\$ 21 ',
                      style: getMediumStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cash on Delivery Fee',
                      style: getMediumStyle(color: Colors.grey),
                    ),
                    Text(
                      '\$ 19 ',
                      style: getMediumStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'total order',
                      style: getMediumStyle(color: Colors.grey),
                    ),
                    Text(
                      '\$ 823.34 ',
                      style: getMediumStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            'Shipping address',
            style: getBoldStyle(color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.white,
            height: 80,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'mohamed ashraf mostafa',
                   style: getBoldStyle(color: Colors.black),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  ' 6 Dr. Ibrahim Nagy St.,Al Sahel,shoubra Cairo',
                  style: getSemiBoldStyle(color: Colors.black),
                ),
              ],
            ) ,
          ),
          const Spacer(),
          Text(
            'Shipment details',
            style: getBoldStyle(color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.white,
            height: 220,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  padding: const EdgeInsets.all(8),
                  decoration:   BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.amber[100],
                    // borderRadius: BorderRadius.circular(20),
                    border: const Border(
                      bottom: BorderSide(
                        color: Colors.amber,
                        width: 2,
                      ),
                      left: BorderSide(
                        color: Colors.amber,
                        width: 2,
                      ),
                      right: BorderSide(
                        color: Colors.amber,
                        width: 2,
                      ),
                      top: BorderSide(
                        color: Colors.amber,
                        width: 2,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.check_circle_outline_sharp ,
                        color: Colors.amber,
                      ), 
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        '21 normal delivery ',
                        style: getSemiBoldStyle(color: Colors.grey),
                      ),
                       Text(
                        'Get it on day 31',
                         style: getSemiBoldStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(height: 2.5,color: Colors.green),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'delivery day: ',
                  style: getMediumStyle(color: Colors.green),
                ),
                const SizedBox(
                  height: 8,
                ),
                Wrap(
                  children: [
                    Text(
                      'July 1,2022  ',
                      maxLines: 2,
                      style: getSemiBoldStyle(color: ColorsTheme.green),
                    ),
                    Text(
                      'If you order within 4 hours the next 55 minutes',
                      maxLines: 2,
                      style: getMediumStyle(color: ColorsTheme.gray),
                    ),
                  ],
                ),
                const SizedBox(
                height: 10,
                ),
                const Divider(height: 2.5,color: Colors.green),
                const SizedBox(
                  height: 10,
                ),
                 Text(
                  'Continue to review your order',
                  style: getSemiBoldStyle(color: ColorsTheme.black),
                ),
              ],
            ),
          ),
          const Spacer(),
           InkWell(
            onTap: (){
              Navigator.pushNamed(context, testpage);
            },
            child: DefaulteFormField.container(
              child: Center(
                child: Text(
                  'Continue to review your order',
                  style: getSemiBoldStyle(color: ColorsTheme.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  String? get title => '';
 
}