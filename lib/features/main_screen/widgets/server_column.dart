import 'package:flutter/material.dart';
import 'package:test_app1/design_system/typography/text_styles.dart';

import 'main_info_block_row.dart';

class ServersColumn extends StatelessWidget {
  const ServersColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Center(
          child: Text(
            'Common server information',
            style: baseStyle.copyWith(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        const MainInfoBlocRow(
          title: 'Total servers',
          data: '1067',
        ),
        const SizedBox(
          height: 16.0,
        ),
        const MainInfoBlocRow(
          title: 'Total suspended',
          data: '46',
          colorMarker: ServerType.suspendedServer,
        ),
        const SizedBox(
          height: 16.0,
        ),
        const MainInfoBlocRow(
          title: 'Total waiting',
          data: '39',
          colorMarker: ServerType.waitingServer,
        ),
        const SizedBox(
          height: 16.0,
        ),
        const MainInfoBlocRow(
          title: 'Total working',
          data: '982',
          colorMarker: ServerType.workingServer,
        ),
      ],
    );
  }
}
