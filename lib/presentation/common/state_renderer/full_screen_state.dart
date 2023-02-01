import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FullScreenState extends StatelessWidget {
  FullScreenState({required this.content, super.key});
  Widget content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.blue, //change your color here
        ),
      ),
      body: content,
    );
  }
}
