import 'package:flutter/material.dart';

import '../../../design_system/colors/colors.dart';
import 'manager_flexible_space_bar.dart';
import 'sliver_action_container.dart';
import 'sliver_title.dart';

const expandedHeight = 200.0;
const toolBarHeight = 130.0;

class ManagerMainScreen extends StatelessWidget {
  const ManagerMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: defaultBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: defaultBackgroundColor,
            pinned: true,
            floating: true,
            automaticallyImplyLeading: false,
            toolbarHeight: toolBarHeight,
            expandedHeight: expandedHeight,
            centerTitle: false,
            title: SliverTitle(),
            actions: [
              SliverActionContainer(),
            ],
            flexibleSpace: ManagerFlexibleSpaceBar(
              animationPoint: expandedHeight,
            ),
          ),
        ],
      ),
    );
  }
}
