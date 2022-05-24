
import 'package:fashion_style/user/sales/sales_widet.dart';
import 'package:flutter/material.dart';

class SalesPage extends StatelessWidget {
  const SalesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemBuilder: ((context, index) => const SalesWidget()), 
      separatorBuilder:((context, index) => const SizedBox()), 
      itemCount: 10
    );
  }
}

  /* leading: Container(  
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image:DecorationImage( image: NetworkImage(urlImage)),
          ),


          ListTile(
        title: Text(
          'Mohamed Ashraf',
          style: getBoldStyle(color: Colors.black),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          'Senior sales professional with over 25 years'
          'of experience providing assistance in office'
          'and storefront environments primarily within'
          'retail and electronics industries looking for new strategies to',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style:  getLightStyle(color: ColorsTheme.gray,),
        ),
        contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        // minVerticalPadding: 1.5,
        // horizontalTitleGap: 2,
        // dense: true,
        tileColor: ColorsTheme.salseColor,
        isThreeLine: true,  
        // minLeadingWidth: 2,
        enabled: true,
        leading: CircleAvatar(
          maxRadius: 50,
          minRadius: 50,
          backgroundImage: NetworkImage(urlImage) 
        ),
      ),
        ) */