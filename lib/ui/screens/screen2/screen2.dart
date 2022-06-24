
import 'package:flutter/material.dart';
import 'widgets/textfield.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text ('Screen2'),),
      body: const Center(child: TextFieldWidget()),
    );
  }
}
