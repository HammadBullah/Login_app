import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';


class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key, required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final isDark = MediaQuery.of(context).platformBrightness == Brightness.dark ;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            }, icon: Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          tEditProfile,
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: isDark ? tWHiteColor : tDarkColor,
        elevation: 0,
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
                  LineAwesomeIcons.camera,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
          ),
          ],
        ),
              const SizedBox(height: 30,),
              Divider(),
              const SizedBox(height: 30,),
              Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(const Radius.circular(20.0)),
                          ),
                          label: Text('Full Name'),
                          prefixIcon: Icon(Icons.person_outline_rounded),
                        ),
                      ),
                      const SizedBox(height: tFormHeight,),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(const Radius.circular(20.0)),
                          ),
                          label: Text('E-mail'),
                          prefixIcon: Icon(Icons.email_outlined),
                        ),
                      ),
                      const SizedBox(height: tFormHeight,),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(const Radius.circular(20.0)),
                          ),
                          label: Text('Phone Number'),
                          prefixIcon: Icon(Icons.numbers),
                        ),
                      ),
                      const SizedBox(height: tFormHeight,),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(const Radius.circular(20.0)),
                          ),
                          label: Text('Password'),
                          prefixIcon: Icon(Icons.fingerprint),
                        ),
                      ),
                      const SizedBox(height: tFormHeight,),
                    ],
                  )),
              Divider(),
              const SizedBox(height: 30,),

              SizedBox(
                width: double.infinity,
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
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: tJoined,
                      style: Theme.of(context).textTheme.subtitle1,
                      children: const [
                        TextSpan(text: tJoinedAt, style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ))
                      ]
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent.withOpacity(0.1),
                          elevation: 0,
                          foregroundColor: Colors.red,
                          shape: const StadiumBorder(),
                          side: BorderSide.none,
                        ),
                        child: const Text(tDelete)
                    ),
                  ),
                ],
              )

        ]
    ),
    ),
      ),
    );
  }
}