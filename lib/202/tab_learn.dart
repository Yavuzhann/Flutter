import 'package:flutter/material.dart';
import 'package:noxplayer_demo/101/Image_learn.dart';
import 'package:noxplayer_demo/101/card_learn.dart';
import 'package:noxplayer_demo/101/color_learn.dart';
import 'package:noxplayer_demo/101/text_learn.dart';

class TabLearnPage extends StatefulWidget {
  TabLearnPage({Key? key}) : super(key: key);

  @override
  State<TabLearnPage> createState() => _TabLearnPageState();
}

class _TabLearnPageState extends State<TabLearnPage>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchvalue = 10;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _tabController.animateTo(0);
            },
          ),
          bottomNavigationBar: BottomAppBar(
            notchMargin: _notchvalue,
            shape: const CircularNotchedRectangle(),
            child: _MyTabBar(tabController: _tabController),
          ),
          appBar: AppBar(),
          body: _TabBarView(tabController: _tabController),
        ));
  }
}

class _MyTabBar extends StatelessWidget {
  const _MyTabBar({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        indicatorColor: Colors.white,
        controller: _tabController,
        tabs: _MyTabViews.values.map((e) => Tab(text: '${e.name}')).toList());
  }
}

class _TabBarView extends StatelessWidget {
  const _TabBarView({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
        physics: const NeverScrollableScrollPhysics(), //Scrollu kapatır

        controller: _tabController,
        children: [
          ImageLearn(),
          ColorLearn(),
          CardLearn(),
          TextLearnView(),
        ]);
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MyTabViewsExtension on _MyTabViews {}
