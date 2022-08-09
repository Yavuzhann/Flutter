import 'package:flutter/material.dart';

class ScaffoldLifeCircleLearn extends StatefulWidget {
  ScaffoldLifeCircleLearn({Key? key, required this.meesage}) : super(key: key);
  String meesage;

  @override
  State<ScaffoldLifeCircleLearn> createState() =>
      _ScaffoldLifeCircleLearnState();
}

class _ScaffoldLifeCircleLearnState extends State<ScaffoldLifeCircleLearn> {
  String _message = "";
  late final bool _isodd;
  @override
  //initstate bir kere çağırılır and page draw edilmeden öncde çalışır
  void initState() {
    super.initState();
    _isodd = widget.meesage.length.isOdd;
    _message = widget.meesage;
  }

  @override
  // void didUpdateWidget(covariant ScaffoldLifeCircleLearn oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   if (oldWidget.meesage != widget.meesage) {
  //     print("b");
  //   }
  // }
//sayfa öldüğünde yani sayfadan çıkıldığında kullanılır.
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }

  @override
  //InıtStateden sonra çalışır tek farkı bir kez değil birden fazla kez çalışabilmektedir.
  void didChangeDependencies() {
    super.didChangeDependencies();
    _compuitname();
  }

  void _compuitname() {
    _isodd ? _message += "Tek" : _message += "Çifttir";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isodd
          ? TextButton(
              onPressed: () {},
              child: Text(_message),
            )
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
