import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);
  final String text = "Yavuzhan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(text),
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: Padding(
          padding:
              ProjectPadding.paddingHorizantal + ProjectPadding.paddingVericall,
          child: Column(
            children: [
              Padding(
                padding: ProjectPadding.paddingHorizantal +
                    ProjectPadding.paddingVericall,
                child: const ContainerExaple(),
              ),
              const ContainerExaple(),
              const ContainerExaple()
            ],
          ),
        ));
  }
}

class ContainerExaple extends StatelessWidget {
  const ContainerExaple({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(color: Colors.red),
    );
  }
}

class ProjectPadding {
  static const paddingVericall = EdgeInsets.symmetric(vertical: 10);
  static const paddingHorizantal = EdgeInsets.symmetric(horizontal: 20);
}
