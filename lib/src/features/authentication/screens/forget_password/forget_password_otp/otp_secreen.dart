import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(tOtpTitle,
              style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 120.0
            ),),
            Text(tOtpSubtitle.toUpperCase(), style: Theme.of(context).textTheme.headline6,),
            const SizedBox(height: 40.0,),
            Text("$tOtpMessage hammadbullad@gmail.com", style: Theme.of(context).textTheme.subtitle2, textAlign: TextAlign.center,),
            const SizedBox(height: 20.0,),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.center,
              focusedBorderColor: tPrimaryColor,
              fieldWidth: 50,
              numberOfFields: 6,
              cursorColor: tPrimaryColor,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code){print("OTP os => $code");
                },
            ),
            const SizedBox(height: tFormHeight,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Get.to(()=> const OTPScreen());
              },
                child: Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
