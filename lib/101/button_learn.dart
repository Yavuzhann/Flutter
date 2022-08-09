import 'package:flutter/material.dart';

class button_learn extends StatelessWidget {
  const button_learn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child:
                Text("Yavuzhan", style: Theme.of(context).textTheme.headline6),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.black;
              } else {
                return Colors.white;
              }
            })),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Data")),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle_outlined)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add_alarm_rounded),
          ),
          SizedBox(
            width: 100,
            child: OutlinedButton(
              onPressed: () {},
              child: const Text("data"),
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green, shape: const CircleBorder()),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Text("data"),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Deneme Gardaş"),
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                padding: const EdgeInsets.only(
                    top: 20, right: 40, left: 40, bottom: 20),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
          )
        ],
      ),
    );
  }
}
