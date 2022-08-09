import 'package:flutter/material.dart';
import 'package:noxplayer_demo/101/product/counter_welcome_button.dart';
import 'package:noxplayer_demo/101/product/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _textdeger = 0;
  void _mathprocess(bool a) {
    setState(() {
      if (a) {
        _textdeger++;
      } else {
        _textdeger--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.welcometext),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _toplamabutton(),
          Padding(
            padding: ProjectPadding.buttonpadding,
            child: _cikarmabutton(),
          )
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(_textdeger.toString(),
                  style: Theme.of(context).textTheme.headline2)),
          const Placeholder(),
          const CounterWelcomeButton()
        ],
      ),
    );
  }

  FloatingActionButton _toplamabutton() {
    return FloatingActionButton(
      onPressed: () {
        _mathprocess(true);
      },
      child: const Icon(Icons.add),
    );
  }

  FloatingActionButton _cikarmabutton() {
    return FloatingActionButton(
      onPressed: () {
        _mathprocess(false);
      },
      child: const Icon(Icons.directions_railway_filled_rounded),
    );
  }
}

class ProjectPadding {
  static const EdgeInsets buttonpadding = EdgeInsets.only(left: 10);
}
