import 'package:flutter/material.dart';

class DemoProject extends StatelessWidget {
  const DemoProject({Key? key}) : super(key: key);
  final String title = "Yavuzhanın Demo Projesi";
  final String description = "Lorem ipsum harika bir şey dostum naber";
  final String _createnote = "Create a note";
  final String _importtext = "Import notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(),
      body: Padding(
        padding: _PaddingProject.horizantalpadding,
        child: Column(
          children: [
            const _ProjectPng(pngway: ProjectImage.applebook),
            _HeadlineWiget(title: title),
            Padding(
              padding: _PaddingProject.verticalpadding,
              child: _SubtitleWidget(
                description: description,
                textalgn: TextAlign.center,
              ),
            ),
            const Spacer(),
            _createelevatedbutton(),
            TextButton(onPressed: () {}, child: Text(_importtext)),
            const SizedBox(
              height: _HeightButton._Sizedboxheight2,
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton _createelevatedbutton() {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
            height: _HeightButton._SizedBoxxheight,
            child: Center(child: Text(_createnote))));
  }
}

class _HeightButton {
  static const double _SizedBoxxheight = 50;
  static const double _Sizedboxheight2 = 30;
}

class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget(
      {Key? key, required this.description, this.textalgn = TextAlign.center})
      : super(key: key);

  final String description;
  final TextAlign textalgn;

  @override
  Widget build(BuildContext context) {
    return Text(
      description * 4,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w300),
      textAlign: textalgn,
    );
  }
}

class _HeadlineWiget extends StatelessWidget {
  const _HeadlineWiget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800));
  }
}

class _PaddingProject {
  static const EdgeInsets horizantalpadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalpadding = EdgeInsets.symmetric(vertical: 20);
}

class ProjectImage {
  static const String applebook = "applebookpng.png";
}

class _ProjectPng extends StatelessWidget {
  const _ProjectPng({Key? key, required this.pngway}) : super(key: key);
  final String pngway;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        _pngwayy,
        width: 300,
        height: 200,
        errorBuilder: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }

  String get _pngwayy => "assets/png/$pngway";
}
