import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:test_app1/design_system/typography/text_styles.dart';

import '../../../design_system/colors/colors.dart';

class SliverActionButtonWithBadge extends StatelessWidget {
  const SliverActionButtonWithBadge({
    super.key,
    required this.icon,
    this.onPressed,
  });

  final Widget icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Badge(
      badgeContent: Text(
        '3',
        style: TypographyProject.defaultTextStyle.copyWith(
          color: Colors.black,
        ),
      ),
      badgeColor: badgeDefaultBackgroundColor,
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}
