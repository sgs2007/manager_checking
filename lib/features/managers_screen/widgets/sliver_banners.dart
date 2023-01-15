import 'package:flutter/material.dart';

import '../../../design_system/indent/indent.dart';

const _bannerPadding = 2 * Indent.i2;
const _bannerHeight = 200.0;

class SliverBanners extends StatelessWidget {
  const SliverBanners({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bannerWidth = size.width - _bannerPadding;
    return SliverToBoxAdapter(
      child: SizedBox(
        height: _bannerHeight,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(
            horizontal: Indent.i2,
          ),
          separatorBuilder: (context, index) => const SizedBox(
            width: Indent.i2,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: ((context, index) => Container(
                width: bannerWidth,
                height: _bannerHeight,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
