import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';

class DashboardTrending extends StatelessWidget {
  const DashboardTrending({
    super.key,
    required this.txtTheme, required this.isDark,
  });

  final TextTheme txtTheme;
  
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(
              width: 320,
              height: 250,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: isDark ? tDarkColor.withOpacity(0.4) : tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            'Nike Air Force',
                            style: txtTheme.headline6,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 20,),
                        const Flexible(child: const Image(image: AssetImage(tAirForce), height: 150,))
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                            onPressed: (){},
                            child: const Icon(Icons.play_arrow)),
                        const SizedBox(width: tDashboardCardPadding,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Rs. 45000', style: txtTheme.headline6, overflow: TextOverflow.ellipsis,),
                            Text('View More', style: txtTheme.subtitle1, overflow: TextOverflow.ellipsis,),
                          ],
                        )

                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(width: tDashboardPadding,),
            SizedBox(
              width: 320,
              height: 250,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: isDark ? tDarkColor.withOpacity(0.4) : tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            'Air Jordan',
                            style: txtTheme.headline6,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 20,),
                        const Flexible(child: const Image(image: AssetImage(tJordans), height: 150,))
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                            onPressed: (){},
                            child: const Icon(Icons.play_arrow)),
                        const SizedBox(width: tDashboardCardPadding,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Rs. 100,00', style: txtTheme.headline6, overflow: TextOverflow.ellipsis,),
                            Text('View More', style: txtTheme.subtitle1, overflow: TextOverflow.ellipsis,),
                          ],
                        )

                      ],
                    )
                  ],
                ),
              ),
            ),
          ]
      ),
    );
  }
}


