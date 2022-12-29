import 'package:flutter/material.dart';

import '../../design_system/colors/colors.dart';
import '../../design_system/typography/text_styles.dart';

class CommonCategoryContainer extends StatelessWidget {
  const CommonCategoryContainer({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(
              16.0,
            ),
            decoration: const BoxDecoration(
              color: mainButtonColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Text(
            text,
            style: baseStyle.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
