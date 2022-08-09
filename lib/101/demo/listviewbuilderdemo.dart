import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  late final List<CollectionCard> _cards;

  @override
  void initState() {
    super.initState();

    _cards = CollectionItems().cards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trying Project"),
      ),
      body: ListView.builder(
        itemCount: _cards.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: ProjectPadding().cardpading,
            child: _CardsWidget(
              model: _cards[index],
            ),
          );
        },
      ),
    );
  }
}

class _CardsWidget extends StatelessWidget {
  const _CardsWidget({
    Key? key,
    required CollectionCard model,
  })  : _model = model,
        super(key: key);

  final CollectionCard _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: ProjectPadding().columnpadding,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(_model.imagepatch),
            ),
            Padding(
              padding: ProjectPadding().rowpadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _model.title,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(fontStyle: FontStyle.italic),
                  ),
                  Text("${_model.price} ETH")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CollectionCard {
  final String imagepatch;
  final String title;
  final double price;

  CollectionCard(this.imagepatch, this.title, this.price);
}

class ProjectPadding {
  final cardpading = const EdgeInsets.symmetric(horizontal: 20, vertical: 10);
  final columnpadding = const EdgeInsets.all(15);
  final rowpadding = const EdgeInsets.only(top: 8);
}

class CollectionItems {
  late final List<CollectionCard> cards;

  CollectionItems() {
    cards = [
      CollectionCard(ImageProject().imagecard, "Abcstract1 Art", 1.0),
      CollectionCard(ImageProject().imagecard, "Abcstract2 Art", 1.0),
      CollectionCard(ImageProject().imagecard, "Abcstract3 Art", 1.0),
    ];
  }
}

class ImageProject {
  final imagecard = "assets/jpg/kzkulesi.jpg";
}
