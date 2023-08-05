import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_app/src/constants/colors.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.isDark,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: isDark
              ? tPrimaryColor.withOpacity(0.1)
              : tAccentColor.withOpacity(0.1),
        ),
        child: Icon(
          icon,
          color: isDark ? tPrimaryColor : tAccentColor,
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.subtitle2?.apply(color: textColor),
      ),
      trailing: endIcon ? Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: isDark
              ? tPrimaryColor.withOpacity(0.1)
              : Colors.grey.withOpacity(0.1),
        ),
        child: Icon(
          LineAwesomeIcons.angle_right,
          color: Colors.grey,
        ),
      ) : null,
    );
  }
}
