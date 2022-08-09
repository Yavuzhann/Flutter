import 'package:flutter/material.dart';

import 'navigation_learn_page.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorWidget {
  List<int> selectedindex = [];

  void addSelectIndex(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedindex.add(index) : selectedindex.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemBuilder: (context, index) {
        return TextButton(
          onPressed: () async {
            final response = await navigationwidgetNormal(
                context,
                NavigationLearnPage(
                  isOkay: selectedindex.contains(index),
                ));
            if (response is bool) {
              addSelectIndex(index, response);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(
              color: selectedindex.contains(index) ? Colors.green : Colors.red,
            ),
          ),
        );
      }),
    );
  }
}

mixin NavigatorWidget {
  void navigationwidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
      settings:
          const RouteSettings(), //İstediğin birşeyi gideceği sayfaya gönderir!
      //fullscreenDialog: true, //Direk açar ve istenildiği zaman kapatır
    ));
  }

  Future<T?> navigationwidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
      settings:
          const RouteSettings(), //İstediğin birşeyi gideceği sayfaya gönderir!
      //fullscreenDialog: true, //Direk açar ve istenildiği zaman kapatır
    ));
  }
}
