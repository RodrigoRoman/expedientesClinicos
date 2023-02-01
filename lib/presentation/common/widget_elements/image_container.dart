import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimatedImage extends StatelessWidget {
  final String animationName;
  const AnimatedImage({required this.animationName, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        width: (size.width) * AppSizePercents.per70,
        height: (size.height) * AppSizePercents.per40,
        child: Lottie.asset(animationName));
  }
}
