import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);
  final String _title = "İmage Learning";
  final String ImagePath =
      "https://i1.sndcdn.com/avatars-000145481005-8x4evx-t500x500.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Column(children: [
        // SizedBox(
        //     width: 100,
        //     height: 100,
        //     child: _ProjectPng(
        //       name: ProjectImages().applebook3,
        //     )),
        Image.network(
          ImagePath,
          errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.abc_sharp),
        )
      ]),
    );
  }
}

class ProjectImages {
  final String applebook = "assets/bookandapple.png";
  final String applebook2 = "applebook.png";
  final String applebook3 = "142395.png";
}

class _ProjectPng extends StatelessWidget {
  const _ProjectPng({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _namewithmethod,
    );
  }

  String get _namewithmethod => "assets/png/$name";
}
