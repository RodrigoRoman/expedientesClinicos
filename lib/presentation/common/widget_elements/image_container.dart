import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimatedImage extends StatelessWidget {
  final String animationName;
  const AnimatedImage({required this.animationName, Key? key})
      : super(key: key);
  @override
  //Currently the lottie file is glitching - Its background appears as white
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.transparent,
      width: (size.width) * AppSizePercents.per70,
      height: (size.height) * AppSizePercents.per40,
      child: Lottie.asset(animationName,
          frameRate: FrameRate.max,
          animate: false,
          repeat: true,
          reverse: true,
          fit: BoxFit.contain,
          alignment: Alignment.center),
    );
  }
}
