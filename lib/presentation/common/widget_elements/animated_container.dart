import 'package:flutter/material.dart';

class AppearAnimatedContainer extends StatefulWidget {
  Duration duration;
  double widthSize;
  double heightSize;
  Widget body;
  AppearAnimatedContainer(
      {required this.duration,
      required this.widthSize,
      required this.heightSize,
      required this.body});
  @override
  _AppearAnimatedContainerState createState() =>
      _AppearAnimatedContainerState();
}

class _AppearAnimatedContainerState extends State<AppearAnimatedContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          width: _animation.value * widget.widthSize,
          height: _animation.value * widget.heightSize,
          child: child,
        );
      },
      child: widget.body,
    );
  }
}
