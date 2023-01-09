import 'package:flutter/material.dart';

import '../../../design_system/colors/colors.dart';
import 'sliver_menu_button.dart';

class MainScreenSlivers extends StatelessWidget {
  const MainScreenSlivers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              backgroundColor: mainContainerColor,
              pinned: true,
              floating: true,
              expandedHeight: 200,
              shape: const ContinuousRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
              title: const Text('Serhii Heorhiiev'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                ),
              ],
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
              ),
              flexibleSpace: LayoutBuilder(
                builder: (context, cons) {
                  final top = cons.biggest.height;
                  return FlexibleSpaceBar(
                    expandedTitleScale: 1,
                    titlePadding: EdgeInsets.zero,
                    title: AnimatedOpacity(
                      opacity: top > 200 ? 1.0 : 0.0,
                      duration: const Duration(microseconds: 150),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                        ),
                        child: SizedBox(
                          height: 120,
                          child: Column(
                            children: const [
                              SliverMenuButton(
                                title: 'Current tasks:',
                                icon: Icons.edit_note,
                              ),
                              Divider(),
                              SliverMenuButton(
                                title: 'Emergency tasks:',
                                icon: Icons.warning_amber_outlined,
                              ),
                              Divider(),
                              SliverMenuButton(
                                title: 'Time tracing',
                                icon: Icons.timer,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
