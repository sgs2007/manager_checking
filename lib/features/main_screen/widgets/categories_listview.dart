import 'package:flutter/material.dart';

import '../../../common/widgets/common_category_container.dart';
import '../model/topics_category.dart';
import 'main_info_container.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      children: [
        const MainInfoContainer(),
        ...topicCategories.map(
          (item) => TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 8.0,
              ),
            ),
            onPressed: () {},
            child: CommonCategoryContainer(
              text: item,
            ),
          ),
        )
      ],
    );
  }
}
