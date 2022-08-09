import 'package:flutter/material.dart';

import 'model_learn.dart';

class ModelViewPage extends StatefulWidget {
  ModelViewPage({Key? key}) : super(key: key);

  @override
  State<ModelViewPage> createState() => _ModelViewPageState();
}

class _ModelViewPageState extends State<ModelViewPage> {
  var user1 = ModelViews(
    body: "a",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user1 = user1.copyWith(title: 'b');
          });
        },
      ),
      appBar: AppBar(
        title: Text(user1.body ?? "Not has ready data"),
      ),
    );
  }
}
