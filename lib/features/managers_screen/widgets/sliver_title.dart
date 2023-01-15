import 'package:flutter/material.dart';

import '../../../common/constants/constants_project.dart';
import '../../../design_system/typography/text_styles.dart';
import 'manager_main_screen.dart';

class SliverTitle extends StatefulWidget {
  const SliverTitle({
    super.key,
    required this.scrollController,
  });
  final ScrollController scrollController;

  @override
  State<SliverTitle> createState() => _SliverTitleState();
}

class _SliverTitleState extends State<SliverTitle> with TickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: mainDurationAnimationTime,
      ),
    );
    _animation = CurvedAnimation(parent: _animationController, curve: Curves.fastOutSlowIn);
    widget.scrollController.addListener(runAnimation);
  }

  @override
  void dispose() {
    _animationController.dispose();
    widget.scrollController.removeListener(runAnimation);
    super.dispose();
  }

  void runAnimation() {
    widget.scrollController.hasClients && widget.scrollController.offset > (expandedHeight - toolBarHeight)
        ? _animationController.reverse()
        : _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Serhii Heorhiiev',
              style: TypographyProject.defaultTextStyle,
            ),
            ScaleTransition(
              scale: _animation,
              child: const Text(
                'Developer',
                style: TypographyProject.defaultLargeTextStyle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
