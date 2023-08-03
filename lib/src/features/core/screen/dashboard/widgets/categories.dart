import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/sizes.dart';

class DashboardCategories extends StatelessWidget {
  const DashboardCategories({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 170,
            height: 50,
            child: Row(
              children: [
                Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tPrimaryColor),
                    child: Center(
                      child: Text('Nike', style: txtTheme.headline6?.apply(color: Colors.white, fontSizeDelta: -5),),
                    )
                ),
                const SizedBox(width: 5,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Nike Shoes', style: txtTheme.headline6?.apply( fontSizeDelta: -1), overflow: TextOverflow.ellipsis,),
                      Text('Shop Now', style: txtTheme.subtitle2?.apply( fontSizeDelta: -1),overflow: TextOverflow.ellipsis,),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: tDashboardPadding,),
          SizedBox(
            width: 170,
            height: 50,
            child: Row(
              children: [
                Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tPrimaryColor),
                    child: Center(
                      child: Text('AD', style: txtTheme.headline6?.apply(color: Colors.white, fontSizeDelta: -5),),
                    )
                ),
                const SizedBox(width: 5,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Adidas', style: txtTheme.headline6?.apply( fontSizeDelta: -1), overflow: TextOverflow.ellipsis,),
                      Text('Shop Now', style: txtTheme.subtitle2?.apply( fontSizeDelta: -1),overflow: TextOverflow.ellipsis,),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: tDashboardPadding,),
          SizedBox(
            width: 170,
            height: 50,
            child: Row(
              children: [
                Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tPrimaryColor),
                    child: Center(
                      child: Text('Vans', style: txtTheme.headline6?.apply(color: Colors.white, fontSizeDelta: -5),),
                    )
                ),
                const SizedBox(width: 5,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Vans Shoes', style: txtTheme.headline6?.apply( fontSizeDelta: -1), overflow: TextOverflow.ellipsis,),
                      Text('Shop Now', style: txtTheme.subtitle2?.apply( fontSizeDelta: -1),overflow: TextOverflow.ellipsis,),
                    ],
                  ),
                )
              ],
            ),
          ),


        ],
      ),
    );
  }
}

