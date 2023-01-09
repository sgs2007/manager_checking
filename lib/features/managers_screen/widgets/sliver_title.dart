import 'package:flutter/material.dart';

class SliverTitle extends StatelessWidget {
  const SliverTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Serhii Heorhiiev',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFF8D3C7),
              ),
            ),
            Text(
              'Developer',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF8D3C7),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
