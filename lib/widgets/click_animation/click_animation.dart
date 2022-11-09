import 'package:flutter/material.dart';
import 'package:ui/theme.dart';

class UIClickAnimation extends StatefulWidget {
  final void Function()? onPressed;
  final void Function()? onLongPressed;
  final Color? hoverColor;
  final Widget Function(Color? color) builder;

  const UIClickAnimation({
    Key? key,
    this.onPressed,
    this.onLongPressed,
    this.hoverColor,
    required this.builder,
  }) : super(key: key);

  @override
  State<UIClickAnimation> createState() => _UIClickAnimationState();
}

class _UIClickAnimationState extends State<UIClickAnimation> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (TapDownDetails details) {
        setState(() {
          isOn = true;
        });
      },
      onTapUp: (TapUpDetails details) {
        setState(() {
          isOn = false;
        });
      },
      onTapCancel: () {
        setState(() {
          isOn = false;
        });
      },
      onTap: widget.onPressed,
      child: widget.builder(isOn ? widget.hoverColor ?? UIColor.popupBackgroundColor : null),
    );
  }
}
