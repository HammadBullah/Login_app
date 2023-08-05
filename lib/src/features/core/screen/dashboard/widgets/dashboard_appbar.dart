import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/features/core/screen/profile/profile_screen.dart';
import 'package:login_app/src/repository/authentication_repository/authentication_repository.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    super.key, required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.menu, color: isDark ? tWHiteColor : tDarkColor),
      title: Text('HomeShop', style: Theme.of(context).textTheme.headline6,),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
          child: IconButton(onPressed: (){
            Get.to(ProfileScreen());
          }, icon: const Image(image: AssetImage(tForgetPasswordImage))),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
