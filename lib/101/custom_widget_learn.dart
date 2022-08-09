import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget with ProjectColor {
  CustomWidgetLearn({Key? key}) : super(key: key);
  final String _food = "food";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: _ProjectPadding.verticalpadding,
              child: SizedBox(
                child: _CreatedElevaterButton(
                  title: _food,
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Padding(
            padding: _ProjectPadding.verticalpadding,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: _CreatedElevaterButton(title: _food, onPressed: () {}),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: _CreatedElevaterButton(
              title: _food,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

class _ProjectPadding {
  static const EdgeInsets normalpadding = EdgeInsets.all(20);
  static const EdgeInsets verticalpadding = EdgeInsets.symmetric(vertical: 10);
}

class ProjectColor {
  final Color red = Colors.red;
  final Color white = Colors.white;
}

//Yeni Elevated Button Oluşturur.
class _CreatedElevaterButton extends StatelessWidget with ProjectColor {
  _CreatedElevaterButton(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: red, shape: const StadiumBorder()),
        onPressed: () {},
        child: Padding(
          padding: _ProjectPadding.normalpadding,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: white, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
// Çıkarılan Anlam--
// Kendimize Özel Widget lar oluştuabilirz ancak bu oluştuduğumuz widgetlar duruma göre dışarıdan değiştirilebilir olamalı
// ancak içeriden yani class(Widget)'ın içinden herhangi birşey değiştirmememliyiz.