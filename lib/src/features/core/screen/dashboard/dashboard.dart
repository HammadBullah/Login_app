import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/core/screen/dashboard/dashboard.dart';
import 'package:login_app/src/features/core/screen/dashboard/widgets/categories.dart';
import 'package:login_app/src/features/core/screen/dashboard/widgets/dashboard_appbar.dart';
import 'package:login_app/src/features/core/screen/dashboard/widgets/dashboard_search.dart';
import 'package:login_app/src/features/core/screen/dashboard/widgets/trending.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      appBar:  DashboardAppBar(isDark: isDark),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tDashboardTitle, style: txtTheme.subtitle2,),
              Text(tDashboardHeading, style: txtTheme.headline2?.apply(fontSizeDelta: -5),),
              const SizedBox(height: tDashboardPadding,),
              DashboardSearch(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding,),
              DashboardCategories(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding,),
              Text(tDashboardTrending, style: txtTheme.headline2?.apply(fontSizeDelta: -15,),
              ),
              const SizedBox(height: tDashboardPadding,),
              DashboardTrending(txtTheme: txtTheme, isDark: isDark,),

            ]
        ),
        ),
      ),
    );
  }
}

