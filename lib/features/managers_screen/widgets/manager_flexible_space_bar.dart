import 'package:flutter/material.dart';
import 'package:test_app1/design_system/indent/indent.dart';

import 'extra_action_row.dart';

class ManagerFlexibleSpaceBar extends StatelessWidget {
  const ManagerFlexibleSpaceBar({
    super.key,
    required this.animationPoint,
  });

  final double animationPoint;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      final top = constrains.biggest.height;
      return FlexibleSpaceBar(
        expandedTitleScale: 1,
        titlePadding: EdgeInsets.zero,
        centerTitle: false,
        title: AnimatedOpacity(
          opacity: top > (animationPoint) ? 1.0 : 0.0,
          duration: const Duration(microseconds: 600),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Indent.i2,
              vertical: Indent.i2,
            ),
            child: SizedBox(
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: Indent.i3,
                  ),
                  ExtraActionRow(
                    title: 'Tasks',
                    subTitle: '11',
                    icon: Icon(
                      Icons.announcement_outlined,
                    ),
                  ),
                  SizedBox(
                    height: Indent.i1,
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
