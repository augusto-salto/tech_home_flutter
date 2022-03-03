import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  final Widget child;
  final BuildContext contexto;
  final BoxConstraints constante;

  const BasicScreen({Key? key, required this.child, required this.contexto, required this.constante}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constrainte) {
          return Center(
            child: ListView(
              children: [
                child
              ],
            ),
          );
        },
      ),
    );
  }
}
