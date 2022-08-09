import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text(
          "data",
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Theme.of(context).errorColor),
        ),
        color: Theme.of(context).errorColor,
      ),
    );
  }
}

class ColorrProperty {
  static final Color Welcome = Color.fromRGBO(156, 50, 50, 1);
}
