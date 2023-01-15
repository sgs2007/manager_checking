import 'package:flutter/material.dart';
import 'package:test_app1/design_system/indent/indent.dart';

import '../../../design_system/colors/colors.dart';
import 'category_sliver_grid.dart';
import 'manager_sliver_app_bar.dart';
import 'sliver_banners.dart';

const expandedHeight = 204.0;
const toolBarHeight = 134.0;
const collapsedToolBarHeight = 70.0;

class ManagerMainScreen extends StatefulWidget {
  const ManagerMainScreen({super.key});

  @override
  State<ManagerMainScreen> createState() => _ManagerMainScreenState();
}

class _ManagerMainScreenState extends State<ManagerMainScreen> {
  late final ScrollController scrollController;
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          ManagerSliverAppBar(
            scrollController: scrollController,
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: Indent.i2,
            ),
          ),
          const SliverBanners(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: Indent.i2,
            ),
          ),
          const CategorySliverGrid(),
        ],
      ),
    );
  }
}
