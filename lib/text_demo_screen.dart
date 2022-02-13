import 'package:flutter/material.dart';

class TextDempScreen extends StatelessWidget {
  const TextDempScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      alignment: Alignment.center,
        child: const Text ("Просто текст", textDirection: TextDirection.ltr )
    );
  }
}
