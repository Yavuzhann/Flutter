import 'package:flutter/material.dart';

class NavigationLearnPage extends StatefulWidget {
  const NavigationLearnPage({Key? key, this.isOkay = false}) : super(key: key);
  final bool isOkay;

  @override
  State<NavigationLearnPage> createState() => _NavigationLearnPageState();
}

class _NavigationLearnPageState extends State<NavigationLearnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton.icon(
        onPressed: () {
          Navigator.of(context).pop(!widget.isOkay);
        },
        icon: Icon(
          Icons.check,
          color: widget.isOkay ? Colors.red : Colors.green,
        ),
        label: widget.isOkay ? const Text("red") : const Text("Onayla"),
      )),
    );
  }
}
