import 'package:flutter/material.dart';
import 'package:noxplayer_demo/101/Image_learn.dart';
import 'package:noxplayer_demo/101/ScaffoldLifeCircle.dart';
import 'package:noxplayer_demo/101/container_sized_box_learn.dart';
import 'package:noxplayer_demo/101/text_learn.dart';
import 'package:noxplayer_demo/101/textfield_learn.dart';
import 'package:noxplayer_demo/202/tab_learn.dart';
import '101/Indicator_learn.dart';
import '101/StatelesWidget_Learn.dart';
import '101/app_bar.dart';
import '101/button_learn.dart';
import '101/card_learn.dart';
import '101/color_learn.dart';
import '101/column_row.dart';
import '101/custom_widget_learn.dart';
import '101/demo/color_change.dart';
import '101/demo/color_change_LifeCircle.dart';
import '101/demo/listviewbuilderdemo.dart';
import '101/demo/stackproject.dart';
import '101/icon_learn.dart';
import '101/listetail_learn.dart';
import '101/listview_learn.dart';
import '101/padding_learn.dart';
import '101/page_view_learn.dart';
import '101/scaffold_learn.dart';
import '101/demo_project.dart';
import '101/stack_learn.dart';
import '101/statfull_learn.dart';
import '101/navigation_learn.dart';
import '202/model_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Öğrenme Projesi',
      theme: ThemeData.dark().copyWith(
          progressIndicatorTheme: const ProgressIndicatorThemeData(
            color: Colors.white,
          ),
          listTileTheme: const ListTileThemeData(
              contentPadding: EdgeInsets.zero), //ListTile daki paddingleri 0lar
          errorColor: ColorrProperty.Welcome,
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.transparent,
            toolbarTextStyle: TextStyle(color: Colors.red),
            centerTitle: true,
          )),
      debugShowCheckedModeBanner: false,
      home: ModelViewPage(),
    );
  }
}
