import 'package:flutter/material.dart';

class IndikatorLearn extends StatelessWidget {
  const IndikatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: const [_CircularProgress()]),
      body: const LinearProgressIndicator(),
    );
  }
}

class _CircularProgress extends StatelessWidget {
  const _CircularProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      //Değerini Belirler
      backgroundColor: Colors.red,
    ));
  }
}



//Çıkarılan Anlam
//ProgressBarlar müşterinin backend tarafında işlem yapıldığını gösteren kontrol araçlarıdır.Color gibi özellik bir projede
//sabir kalmak zorundadır.Bu nedenle bu özellikleri defoult olarak main dosyasında belirtmemiz gerekmektedir.
// progressIndicatorTheme: const ProgressIndicatorThemeData(
//             color: Colors.white,
//           ),
//LinearProgressIndicator-->Düz Şekilde
//CircularProgressIndicator-->Yuvarlak Şekilde -->backgroundColor-Değerin Rengini verir-