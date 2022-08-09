import 'package:flutter/material.dart';
import 'package:noxplayer_demo/101/core/random_image.dart';

class StacKporject extends StatelessWidget {
  const StacKporject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                const Positioned.fill(child: RandomImage()),
                Positioned(
                    height: _PositionValue.positionheight,
                    bottom: 0,
                    width: _PositionValue.positionwidth,
                    child: _createcard())
              ],
            )),
        const Spacer(
          flex: 4,
        )
      ]),
    );
  }

  Card _createcard() {
    return const Card(
      color: Colors.white,
    );
  }
}

class _PositionValue {
  static const double positionheight = 50;
  static const double positionwidth = 200;
}
