import 'package:flutter/material.dart';

import '../../../colors/colors.dart';
import 'server_column.dart';

class MainInfoContainer extends StatelessWidget {
  const MainInfoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 220,
        padding: const EdgeInsets.all(
          16.0,
        ),
        decoration: BoxDecoration(
          color: mainContainerColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
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
        child: const ServersColumn(),
      ),
    );
  }
}
