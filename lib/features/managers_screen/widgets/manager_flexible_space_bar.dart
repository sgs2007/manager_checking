import 'package:flutter/material.dart';

import 'extra_action_row.dart';

class ManagerFlexibleSpaceBar extends StatelessWidget {
  const ManagerFlexibleSpaceBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      final top = constrains.biggest.height;
      return FlexibleSpaceBar(
        expandedTitleScale: 1,
        titlePadding: EdgeInsets.zero,
        centerTitle: false,
        title: AnimatedOpacity(
          opacity: top > 200 ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 150),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: SizedBox(
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 24.0,
                  ),
                  ExtraActionRow(
                    title: 'Tasks',
                    subTitle: '11',
                    icon: Icon(
                      Icons.announcement_outlined,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ExtraActionRow(
                    title: 'Work timer',
                    icon: Icon(
                      Icons.timer,
                    ),
                    subTitle: '17:00',
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
