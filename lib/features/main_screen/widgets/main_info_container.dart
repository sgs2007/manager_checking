import 'package:flutter/material.dart';

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
        height: 200,
        padding: const EdgeInsets.all(
          16.0,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFF8CBBF0),
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
