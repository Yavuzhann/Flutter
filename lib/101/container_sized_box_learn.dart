import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yavuzhan"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            constraints: const BoxConstraints(
                maxHeight: 200, maxWidth: 150, minWidth: 50),
            child: Text("Yavuzhan" * 10),
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            decoration: Boxutilty.prop,
          ),
        ],
      ),
    );
  }
}

class Boxutilty extends BoxDecoration {
  static BoxDecoration get prop => BoxDecoration(
          color: Colors.red,
          border: Border.all(
            width: 10,
            color: Colors.blueAccent,
          ),
          boxShadow: const [
            BoxShadow(
                color: Colors.green, blurRadius: 10, offset: Offset(0.1, 1))
          ]);
}
