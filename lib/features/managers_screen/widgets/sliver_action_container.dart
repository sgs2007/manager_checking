import 'package:flutter/material.dart';
import 'package:test_app1/design_system/indent/indent.dart';

import '../../../common/constants/constants_project.dart';
import '../../../design_system/colors/gradients.dart';
import 'manager_main_screen.dart';
import 'sliver_action_button.dart';
import 'sliver_action_button_with_badge.dart';

const _animatedContainerWIdth = 127.0;

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
  late Animation<double> animationForScaleButton;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(handleScrolling);
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: mainDurationAnimationTime,
      ),
    );
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    );
    animationForScaleButton = CurvedAnimation(
      parent: animationController,
      curve: Curves.fastOutSlowIn,
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
        right: Indent.i2,
        bottom: Indent.i2,
      ),
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: mainDurationAnimationTime,
        ),
        curve: Curves.fastOutSlowIn,
        padding: const EdgeInsets.all(Indent.i1),
        width: _animatedContainerWIdth,
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
              ScaleTransition(
                scale: animationForScaleButton,
                child: SLiverActionButton(
                  icon: const Icon(
                    Icons.settings,
                  ),
                  onPressed: _handleSettingsButtonPressed(),
                ),
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

  VoidCallback _handleSettingsButtonPressed() {
    return () => showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          // shape: const RoundedRectangleBorder(
          //   borderRadius: BorderRadius.vertical(
          //     top: Radius.circular(24),
          //   ),
          // ),
          builder: (context) => DraggableScrollableSheet(
            maxChildSize: 0.9,
            initialChildSize: 0.8,
            minChildSize: 0.5,
            builder: (context, scrollController) => Material(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Indent.i2,
                  vertical: Indent.i2,
                ),
                child: ListView(
                  controller: scrollController,
                  children: [
                    Text('Teeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeest'),
                  ],
                ),
              ),
            ),
          ),
        );
  }
}
