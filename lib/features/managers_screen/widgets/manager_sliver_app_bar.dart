import 'package:flutter/material.dart';

import '../../../design_system/colors/colors.dart';
import 'manager_flexible_space_bar.dart';
import 'manager_main_screen.dart';
import 'sliver_action_container.dart';
import 'sliver_title.dart';

class ManagerSliverAppBar extends StatelessWidget {
  const ManagerSliverAppBar({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: defaultBackgroundColor,
      pinned: true,
      automaticallyImplyLeading: false,
      toolbarHeight: collapsedToolBarHeight,
      expandedHeight: expandedHeight,
      centerTitle: false,
      title: SliverTitle(
        scrollController: scrollController,
      ),
      actions: [
        SliverActionContainer(
          scrollController: scrollController,
        ),
      ],
      flexibleSpace: const ManagerFlexibleSpaceBar(
        animationPoint: expandedHeight,
      ),
    );
  }
}
