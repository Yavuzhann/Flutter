import 'package:flutter/material.dart';

import 'core/random_image.dart';

class ListetailLearn extends StatelessWidget {
  const ListetailLearn({Key? key}) : super(key: key);
  final String title = "Yavuzhan";
  final String subtitle = "Yavuzhan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: _ProjectPadding.normalpadding,
              child: ListTile(
                hoverColor: Colors.transparent,
                title: const SizedBox(
                    child: RandomImage()), //Başlık İçin Kullanılır
                subtitle: Text(subtitle *
                    3), //Başlığın Altındaki Açıklama Kısmı İçin Kullanılır
                onTap: () {},
                leading: //Soluna birşey koymak için kullanılır.
                    Container(
                        width: 30,
                        height: 100,
                        alignment: Alignment.bottomCenter,
                        child: const Icon(Icons.money)),
                trailing: const Icon(//Sağına Birşey koymak İçin Kullanırlır.
                    Icons.chevron_right),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _ProjectPadding {
  static final EdgeInsets normalpadding = const EdgeInsets.all(8.0);
}
