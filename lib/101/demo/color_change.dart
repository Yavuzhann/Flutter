import 'package:flutter/material.dart';

class ColorChange extends StatefulWidget {
  ColorChange({Key? key, required this.initcolor}) : super(key: key);
  final Color? initcolor;

  @override
  State<ColorChange> createState() => _ColorChangeState();
}

class _ColorChangeState extends State<ColorChange> {
  Color? _backgroundcolor;

  void _changeColors(Color color) {
    setState(() {
      _backgroundcolor = color;
    });
  }

  @override
  void didUpdateWidget(covariant ColorChange oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.initcolor != _backgroundcolor && widget.initcolor != null) {
      _changeColors(widget.initcolor!);
    }
  }

  @override
  void initState() {
    super.initState();

    _backgroundcolor = widget.initcolor ?? Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundcolor,
      appBar: AppBar(),
      bottomNavigationBar:
          BottomNavigationBar(onTap: _ChangeColorMethod, items: [
        BottomNavigationBarItem(
            icon: Container(
              color: Colors.red,
              width: 10,
              height: 10,
            ),
            label: "Red"),
        BottomNavigationBarItem(
            icon: Container(
              width: 10,
              height: 10,
              color: Colors.yellow,
            ),
            label: "Yellow"),
        BottomNavigationBarItem(
            icon: Container(
              width: 10,
              height: 10,
              color: Colors.green,
            ),
            label: "Green")
      ]),
    );
  }

  void _ChangeColorMethod(int value) {
    if (value == _colorsProject.red.index) {
      _changeColors(Colors.red);
    } else if (value == _colorsProject.yellow.index) {
      _changeColors(Colors.yellow);
    } else if (value == _colorsProject.green.index) {
      _changeColors(Colors.green);
    }
  }
}

enum _colorsProject { red, yellow, green }
