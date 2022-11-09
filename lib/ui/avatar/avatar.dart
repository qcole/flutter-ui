import 'package:flutter/material.dart';
import 'package:ui/theme.dart';
import 'package:ui/ui.dart';

class UIAvatar extends StatelessWidget {
  final String? text;
  final Widget? image;
  final double? size;
  final double? radius;
  final Color? backgroundColor;

  const UIAvatar.text({
    super.key,
    required String this.text,
    this.size,
    this.radius,
    this.backgroundColor,
  }) : image = null;

  const UIAvatar.image({
    super.key,
    required Widget this.image,
    this.size,
    this.radius,
  })  : text = null,
        backgroundColor = null;

  @override
  Widget build(BuildContext context) {
    final avatarSize = size ?? UITheme.avatarDefaultSize;
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? UITheme.avatarDefaultRadius),
      child: SizedBox(
        width: avatarSize,
        height: avatarSize,
        child: image ??
            Container(
              alignment: Alignment.center,
              color: backgroundColor ?? UIColor.primaryColor,
              child: UIText.custom(
                text!.substring(0, 1),
                fontSize: avatarSize * 0.5,
                color: UITheme.buttonTextColor,
              ),
            ),
      ),
    );
  }
}
