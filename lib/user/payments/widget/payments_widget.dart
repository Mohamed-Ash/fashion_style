
import 'package:fashion_style/core/form_fields/defaulte_form_field.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:fashion_style/core/theme/fonts/style.dart';
import 'package:flutter/material.dart';

class PaymentsWidget extends StatelessWidget {
  const PaymentsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 12, 12, 0),
            child: Text(
              'Choose your payment method',
              style: getBoldStyle(color: ColorsTheme.black),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          /* InkWell(
            onTap: (){
              Navigator.pushNamed(context, testpage);
            },
            child: Container(
              color: ColorsTheme.wight,
              width: double.infinity,
              height: 150,
              child:  Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Paiement when receiving',
                      style: getBoldStyle(color: ColorsTheme.black),
                    ),
                  ],
                ),
              ),
            ),
          ), */
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, paymentWhenReceiving);
            },
            child: Container(
              color: ColorsTheme.wight,
              width: double.infinity,
              height: 150,
              child:  Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Paiement when receiving',
                      style: getBoldStyle(color: ColorsTheme.black),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Cash on Delivery A cash on delivery fee of EGP 30 may apply',
                      style: getMediumStyle(color: ColorsTheme.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                     Text(
                      'Pay online and benefit from a discount on the value of the delivery service',
                      style: getMediumStyle(color: ColorsTheme.black),
                    ),
                  ],
                ),
              ),
             ),
           ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, testpage);
            },
            child: Container(
              width: double.infinity,
              height: 50,
              color:  ColorsTheme.wight,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '+  Add a new payment method',
                      style: getBoldStyle(color: ColorsTheme.black),
                    ),
                    const Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 72,
            color:  ColorsTheme.wight,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                      'Discount Coupons and Gift Cards',
                      style: getMediumStyle(color: ColorsTheme.black),
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
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
}