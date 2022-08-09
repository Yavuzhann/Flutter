import 'package:flutter/material.dart';

import 'color_change.dart';

class ColorDemoLifeCircle extends StatefulWidget {
  ColorDemoLifeCircle({Key? key}) : super(key: key);

  @override
  State<ColorDemoLifeCircle> createState() => _ColorDemoLifeCircleState();
}

class _ColorDemoLifeCircleState extends State<ColorDemoLifeCircle> {
  Color? backgroundcolor;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: _changebackground, icon: const Icon(Icons.clear))
        ],
      ),
      body: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 1,
            child: ColorChange(
              initcolor: backgroundcolor,
            ),
          )
        ],
      ),
    );
  }

  void _changebackground() {
    setState(() {
      backgroundcolor = Colors.pink;
    });
  }
}
