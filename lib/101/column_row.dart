import 'package:flutter/material.dart';

class ContainerRowLearn extends StatelessWidget {
  const ContainerRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Row(children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                ),
              )
            ]),
          ),
          const Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 2,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,//Aralarında Eşit Boşluklar verir!
              // mainAxisAlignment: MainAxisAlignment
              //     .spaceBetween, //Aralarında en uzun boşlukları atar!
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, //Aralarındaki en kısa boşlukları atar
              crossAxisAlignment: CrossAxisAlignment
                  .start, //en yukarıdan başlatır,Diğer özellikleride isimlere göre
              mainAxisSize: MainAxisSize.min, //Widget sadece kendi alanını alır
              children: const [
                Text("Yavuzhan"),
                Text("Yavuzhan"),
                Text("Yavuzhan"),
                Text("Yavuzhan")
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: Column(
              children: const [
                Expanded(
                  child: Text("Yavuzhan"),
                ),
                Expanded(
                  child: Text("Yavuzhan"),
                ),
                Expanded(
                  child: Text("Yavuzhan"),
                ),
                Expanded(
                  child: Text("Yavuzhan"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
