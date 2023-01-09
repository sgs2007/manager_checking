import 'package:flutter/material.dart';

class SLiverActionButton extends StatelessWidget {
  const SLiverActionButton({
    super.key,
    required this.icon,
    this.onPressed,
  });
  final Widget icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
    );
  }
}
