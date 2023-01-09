import 'package:flutter/material.dart';

import 'manager_flexible_space_bar.dart';
import 'sliver_action_container.dart';
import 'sliver_title.dart';

class ManagerMainScreen extends StatelessWidget {
  const ManagerMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF48416C),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xFF48416C),
            pinned: true,
            floating: true,
            automaticallyImplyLeading: false,
            toolbarHeight: 130,
            expandedHeight: 200,
            centerTitle: false,
            title: SliverTitle(),
            actions: [
              SliverActionContainer(),
            ],
            flexibleSpace: ManagerFlexibleSpaceBar(),
          ),
        ],
      ),
    );
  }
}
