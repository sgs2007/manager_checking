import 'package:flutter/material.dart';
import 'package:test_app1/design_system/indent/indent.dart';

import '../../../design_system/colors/colors.dart';
import 'category_list_item.dart';
import 'manager_sliver_app_bar.dart';

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
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Indent.i1,
                ),
                child: CategoryListItem(
                  title: 'Category number ${index.toString()}',
                ),
              ),
              childCount: 20,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: Indent.getIndent(1.25),
              mainAxisExtent: 60.0,
            ),
          ),
        ],
      ),
    );
  }
}
