import 'package:flutter/material.dart';

import '../../../design_system/colors/colors.dart';
import 'categories_listview.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: mainBackgroundColor,
        body: SafeArea(
          child: CategoriesListView(),
        ));
  }
}
