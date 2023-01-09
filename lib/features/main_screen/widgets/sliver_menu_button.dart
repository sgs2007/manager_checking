import 'package:flutter/material.dart';

import '../../../design_system/typography/text_styles.dart';

class SliverMenuButton extends StatelessWidget {
  const SliverMenuButton({
    super.key,
    required this.title,
    this.onPressed,
    required this.icon,
  });

  final String title;
  final VoidCallback? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Emergency tasks:',
          style: baseStyle,
        ),
        IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: onPressed,
          color: Colors.white,
          disabledColor: Colors.grey,
          icon: Icon(
            icon,
          ),
        ),
      ],
    );
  }
}
