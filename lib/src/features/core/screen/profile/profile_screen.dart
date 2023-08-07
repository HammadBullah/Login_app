import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/core/screen/profile/profile_menu.dart';
import 'package:login_app/src/features/core/screen/profile/update_profile_screen.dart';
import 'package:login_app/src/repository/authentication_repository/authentication_repository.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            }, icon: Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          tProfile,
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: isDark ? tWHiteColor : tDarkColor,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(
                        image: AssetImage(tForgetPasswordImage),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: tPrimaryColor,
                        ),
                        child: const Icon(
                          LineAwesomeIcons.alternate_pencil,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                tProfileHeading,
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                tProfileSubHeading,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => UpdateProfileScreen(
                        isDark: isDark,
                      )),
                  child: const Text(
                    tEditProfile,
                    style: TextStyle(color: tDarkColor),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: tPrimaryColor,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(),
              const SizedBox(
                height: 30,
              ),
              ProfileMenuWidget(
                isDark: isDark,
                title: tMenuSettings,
                icon: LineAwesomeIcons.cog,
                onPress: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              ProfileMenuWidget(
                isDark: isDark,
                title: tMenuBilling,
                icon: LineAwesomeIcons.wallet,
                onPress: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(),
              const SizedBox(
                height: 30,
              ),
              ProfileMenuWidget(
                isDark: isDark,
                title: tMenuInformation,
                icon: LineAwesomeIcons.info,
                onPress: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              ProfileMenuWidget(
                isDark: isDark,
                title: tMenuLogout,
                icon: LineAwesomeIcons.alternate_sign_out,
                onPress: () {
                  AuthenticationRepository.instance.logout();
                },
                textColor: Colors.red,
                endIcon: false,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
