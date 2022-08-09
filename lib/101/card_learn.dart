import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);
  final String title = "Card Learning";
  final String sizeddboxtitle = "Card Learning";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          _ProjectCard(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Center(child: Text(sizeddboxtitle)),
            ),
          ),
          _ProjectCard(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Center(child: Text(sizeddboxtitle)),
            ),
          ),
          _ProjectCard(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Center(child: Text(sizeddboxtitle)),
            ),
          )
        ],
      ),
    );
  }
}

class ProjectMargin {
  static const carddmargin = EdgeInsets.all(10);
}

class _ProjectCard extends StatelessWidget {
  var roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

  _ProjectCard({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: child,
      margin: ProjectMargin.carddmargin,
      shape: roundedRectangleBorder,
    );
  }
}
//RoundedRectangleBorder-->Dikdörtgen Border
//CircleBorder-->Yuvarlak Border
//StadiumBorder-->Stadium Şeklinde Border
