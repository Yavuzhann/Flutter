import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            height: 200,
            color: Colors.red,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
