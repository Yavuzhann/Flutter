import 'package:flutter/material.dart';

import 'package:noxplayer_demo/101/card_learn.dart';
import 'package:noxplayer_demo/101/core/random_image.dart';
import 'package:noxplayer_demo/101/demo_project.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 1.0);

  int _changeIndex = 0;
  void _updateIndex(int index) {
    return setState(() {
      _changeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text(_changeIndex.toString()),
          ),
          FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                  duration: _DurationUtilty.slowduration,
                  curve: Curves.slowMiddle,
                );
              },
              child: const Icon(
                Icons.navigate_before,
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
                onPressed: () {
                  _pageController.nextPage(
                    duration: _DurationUtilty.slowduration,
                    curve: Curves.slowMiddle,
                  );
                },
                child: const Icon(
                  Icons.navigate_next,
                )),
          ),
        ],
      ),
      body: PageView(
        padEnds: false,
        onPageChanged: _updateIndex,
        controller: _pageController,
        children: const [RandomImage(), DemoProject(), CardLearn()],
      ),
    );
  }
}

class _DurationUtilty {
  static const slowduration = Duration(milliseconds: 500);
}
