import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          FittedBox(
            //Fitted Box Mesela 1 line sığdırman gerek yazıyı ona göre ayarlama yaparak line sığdırıyor.
            child: Text(
              "Merhaba",
              style: Theme.of(context).textTheme.headline1,
              maxLines: 1,
            ),
          ),
          Container(
            color: Colors.red,
            height: 200,
          ),
          const Divider(), //Divider araya cizgi koyar.
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection:
                  Axis.horizontal, //ListView'ın Dikey olmasını sağlar
              children: [
                Container(
                  color: Colors.yellow,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                ),
                Container(
                  color: Colors.yellow,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                ),
                Container(
                  color: Colors.yellow,
                  width: 100,
                ),
              ],
            ),
          ),
          const Divider(),
          Container(
            color: Colors.green,
            height: 200,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.clear)),
          //xx
          FittedBox(
            //Fitted Box Mesela 1 line sığdırman gerek yazıyı ona göre ayarlama yaparak line sığdırıyor.
            child: Text(
              "Merhaba",
              style: Theme.of(context).textTheme.headline1,
              maxLines: 1,
            ),
          ),
          Container(
            color: Colors.red,
            height: 200,
          ),
          const Divider(), //Divider araya cizgi koyar.
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection:
                  Axis.horizontal, //ListView'ın Dikey olmasını sağlar
              children: [
                Container(
                  color: Colors.yellow,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                ),
                Container(
                  color: Colors.yellow,
                  width: 100,
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                ),
                Container(
                  color: Colors.yellow,
                  width: 100,
                ),
              ],
            ),
          ),
          const Divider(),
          Container(
            color: Colors.green,
            height: 200,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.clear)),
          Demo(),
        ],
      ),
    );
  }
}

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  void initState() {
    super.initState();
    print("hello");
  }

  @override
  void dispose() {
    super.dispose();
    print("Exit");
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
