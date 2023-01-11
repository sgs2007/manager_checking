import 'package:flutter/material.dart';
import 'package:test_app1/design_system/indent/indent.dart';

import '../../../design_system/colors/gradients.dart';
import 'manager_main_screen.dart';
import 'sliver_action_button.dart';
import 'sliver_action_button_with_badge.dart';

class SliverActionContainer extends StatefulWidget {
  const SliverActionContainer({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;

  @override
  State<SliverActionContainer> createState() => _SliverActionContainerState();
}

class _SliverActionContainerState extends State<SliverActionContainer> with SingleTickerProviderStateMixin {
  bool isExpanded = false;
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(handleScrolling);
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
    );
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    );
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(handleScrolling);
    animationController.dispose();
    super.dispose();
  }

  void handleScrolling() {
    setState(() {
      isExpandedPanel ? isExpanded = false : isExpanded = true;
    });
    isExpandedPanel ? animationController.reverse() : animationController.forward();
  }

  bool get isExpandedPanel {
    return widget.scrollController.hasClients && widget.scrollController.offset > (expandedHeight - toolBarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16,
        bottom: 16,
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn,
        padding: const EdgeInsets.all(Indent.i1),
        width: 127,
        decoration: BoxDecoration(
          border: isExpanded ? Border.all(color: Colors.black) : null,
          borderRadius: isExpanded
              ? const BorderRadius.all(
                  Radius.circular(24),
                )
              : null,
          gradient: isExpanded ? expandedGradient : collapsedGradient,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FadeTransition(
              opacity: animation,
              child: SliverActionButtonWithBadge(
                icon: const Icon(
                  Icons.account_circle_outlined,
                ),
                onPressed: () {},
              ),
            ),
            if (isExpanded)
              SLiverActionButton(
                icon: const Icon(
                  Icons.settings,
                ),
                onPressed: () {},
              )
            else
              SliverActionButtonWithBadge(
                icon: const Icon(
                  Icons.account_circle_outlined,
                ),
                onPressed: () {},
              ),
          ],
        ),
      ),
    );
  }
}
