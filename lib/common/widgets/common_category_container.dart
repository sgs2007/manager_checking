import 'package:flutter/material.dart';

import '../../typography/text_styles.dart';

class CommonCategoryContainer extends StatelessWidget {
  const CommonCategoryContainer({
    super.key,
    required this.text,
    // required this.icon,
  });

  final String text;
  // final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        16.0,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
          bottomLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(2, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // Icon(
          //   icon,
          //   size: 24,
          // ),
          Text(
            text,
            style: baseStyle.copyWith(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
