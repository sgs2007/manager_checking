import 'package:flutter/material.dart';

import '../../../design_system/colors/colors.dart';
import '../../../design_system/indent/indent.dart';
import '../../../design_system/typography/text_styles.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Indent.i2,
        vertical: Indent.i1,
      ),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(1, 2),
          ),
        ],
        color: lightButtonBackgroundColor,
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            20.0,
          ),
        ),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TypographyProject.defaultTextStyle,
        ),
      ),
    );
  }
}
