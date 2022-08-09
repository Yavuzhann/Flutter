import 'package:flutter/material.dart';

class StateLessWidgetLearn extends StatelessWidget {
  const StateLessWidgetLearn({Key? key}) : super(key: key);
  final String text1 = "Yavuzhan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextViewTitlet(text: text1),
          const TextViewTitlet(text: "Yavuzhan2"),
          const TextViewTitlet(text: "Yavuzhan3"),
          const _CustomContainer(),
          const _ContainerWidget2()
        ],
      ),
    );
  }
}

class _ContainerWidget2 extends StatelessWidget {
  const _ContainerWidget2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: const Center(
          child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text("Yavuzhan"),
      )),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.blue),
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TextViewTitlet extends StatelessWidget {
  const TextViewTitlet({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.red),
    );
  }
}
