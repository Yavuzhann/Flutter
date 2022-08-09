import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key}) : super(key: key);
  final String name = "Yavuzhan";
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ("Welcome $name ${name.length}"),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: const TextStyle(
                wordSpacing: 2,
                letterSpacing: 2,
                decoration: TextDecoration.underline,
                color: Colors.red,
                fontSize: 25.80,
                fontWeight: FontWeight.w500),
          ),
          Text(
            ("Tabi Efendim $name ${name.length}"),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: ProjectColors.welcomeColor, fontSize: 31),
          ),
          Text(keys.welcomeKeys,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: ProjectColors.welcomeColor))
        ],
      )),
    );
  }
}

class PackageText {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2,
      letterSpacing: 2,
      decoration: TextDecoration.underline,
      color: Colors.red,
      fontSize: 25.80,
      fontWeight: FontWeight.w500);
}

class ProjectColors {
  static Color get welcomeColor => Colors.black;
}

class ProjectKeys {
  final String welcomeKeys = "Hoşgeldiniz Nasılsınız";
}
