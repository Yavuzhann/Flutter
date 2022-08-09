import 'package:flutter/material.dart';

final Color iconcolor = IconProperty().iconcolor;
final double iconsize = IconProperty().iconsize;
const String _title = "Yavuzhan";

class IconLearnView extends StatelessWidget {
  const IconLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_title),
      ),
      body: Column(
        children: [
          const custonIconButton(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            color: iconcolor,
            iconSize: iconsize,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            color: Theme.of(context).colorScheme.background,
            iconSize: iconsize,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            color: iconcolor,
            iconSize: iconsize,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    child: const Center(child: Text("Yavuzan")),
                    width: 200,
                    height: 200,
                  ));
        },
      ),
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'Y'),
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'Z')
      ]),
    );
  }
}

class custonIconButton extends StatelessWidget {
  const custonIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.message_outlined),
      color: iconcolor,
      iconSize: iconsize,
    );
  }
}

class IconProperty {
  final Color iconcolor = Colors.red;
  final double iconsize = 60;
}
