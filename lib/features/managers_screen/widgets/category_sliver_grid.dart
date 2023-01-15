import 'package:flutter/material.dart';

import '../../../design_system/indent/indent.dart';
import 'category_list_item.dart';

class CategorySliverGrid extends StatelessWidget {
  const CategorySliverGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Indent.i2,
          ),
          child: CategoryListItem(
            title: 'Category number ${index.toString()}',
          ),
        ),
        childCount: 9,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: Indent.getIndent(1.25),
        mainAxisExtent: 60.0,
      ),
    );
  }
}
