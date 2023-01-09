import 'package:flutter/material.dart';

import 'sliver_action_button.dart';

class SliverActionContainer extends StatelessWidget {
  const SliverActionContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, bottom: 16),
      child: Container(
        padding: const EdgeInsets.all(8),
        width: 60,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: const BorderRadius.all(
            Radius.circular(24),
          ),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF322D50),
              Color(0xFF322D50),
              Color(0xFF47416C),
              Color(0xFF47416C),
            ],
            stops: [
              0.0,
              0.5,
              0.5,
              1.0,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SLiverActionButton(
              icon: const Icon(
                Icons.account_circle_outlined,
              ),
              onPressed: () {},
            ),
            SLiverActionButton(
              icon: const Icon(
                Icons.settings,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
