import 'package:flutter/material.dart';
import 'package:noxplayer_demo/101/product/language/language_items.dart';

class CounterWelcomeButton extends StatefulWidget {
  const CounterWelcomeButton({Key? key}) : super(key: key);

  @override
  State<CounterWelcomeButton> createState() => _CounterWelcomeButtonState();
}

class _CounterWelcomeButtonState extends State<CounterWelcomeButton> {
  int _countervisitor = 0;
  final String _welcomeText = LanguageItems.welcometext;
  void _counterwelcomeplus() {
    setState(() {
      _countervisitor++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _counterwelcomeplus,
        child: Text("$_welcomeText : $_countervisitor"));
  }
}
