import 'package:flutter/material.dart';

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
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFFF8D3C7),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
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
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFFF8D3C7),
                ),
              ),
              const SizedBox(
                width: 8.0,
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
