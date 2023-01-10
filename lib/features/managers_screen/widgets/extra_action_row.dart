import 'package:flutter/material.dart';

import '../../../design_system/indent/indent.dart';
import '../../../design_system/typography/text_styles.dart';
import 'decorated_action_container.dart';

class ExtraActionRow extends StatelessWidget {
  const ExtraActionRow({
    super.key,
    required this.title,
    this.onPressed,
    required this.icon,
    required this.subTitle,
  });

  final String title;
  final String subTitle;
  final VoidCallback? onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TypographyProject.defaultTextStyle,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Indent.i2,
            ),
            child: Container(
              height: 1,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
          ),
        ),
        DecoraitedActionContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                subTitle,
                style: TypographyProject.defaultSmallTextStyle,
              ),
              const SizedBox(
                width: Indent.i1,
              ),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: onPressed,
                icon: icon,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
