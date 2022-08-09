import 'package:flutter/material.dart';

import 'container_sized_box_learn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Yavuzhan Çayan")),
      backgroundColor: Colors.blueGrey,
      body: const Text("Yavuzhan"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    width: 200,
                  ));
        },
      ),
      drawer: Drawer(
        child: Builder(builder: (context) {
          return const DrawerColumn();
        }),
      ),
      bottomNavigationBar: Container(
        width: 100,
        height: 200,
        decoration: Boxutilty.prop,
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'Y'),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'Z')
        ]),
      ),
    );
  }
}

class DrawerColumn extends StatelessWidget {
  const DrawerColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Yavuzhan"),
        Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: IconButton(
              onPressed: () {}, icon: const Icon(Icons.access_alarm)),
        )
      ],
    );
  }
}
