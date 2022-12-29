import 'package:flutter/material.dart';

import 'main_info_block_row.dart';

class ServersColumn extends StatelessWidget {
  const ServersColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        MainInfoBlocRow(
          title: 'Total servers',
          data: '1067',
        ),
        SizedBox(
          height: 16.0,
        ),
        MainInfoBlocRow(
          title: 'Total suspended',
          data: '46',
          colorMarker: ServerType.suspendedServer,
        ),
        SizedBox(
          height: 16.0,
        ),
        MainInfoBlocRow(
          title: 'Total waiting',
          data: '39',
          colorMarker: ServerType.waitingServer,
        ),
        SizedBox(
          height: 16.0,
        ),
        MainInfoBlocRow(
          title: 'Total working',
          data: '982',
          colorMarker: ServerType.workingServer,
        ),
      ],
    );
  }
}
