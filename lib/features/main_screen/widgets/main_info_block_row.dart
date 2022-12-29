import 'package:flutter/material.dart';

import '../../../design_system/typography/text_styles.dart';

enum ServerType {
  workingServer(color: Colors.green),
  suspendedServer(color: Colors.red),
  waitingServer(color: Colors.yellow);

  const ServerType({
    required this.color,
  });
  final Color color;
}

class MainInfoBlocRow extends StatelessWidget {
  const MainInfoBlocRow({
    super.key,
    required this.data,
    required this.title,
    this.colorMarker,
  });
  final String title;
  final String data;
  final ServerType? colorMarker;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              title,
              style: baseStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (colorMarker != null) ...[
              const SizedBox(
                width: 8.0,
              ),
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: colorMarker!.color,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
              ),
            ],
          ],
        ),
        Text(
          data,
          style: baseStyle.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ],
    );
  }
}
