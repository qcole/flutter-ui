import 'package:flutter/material.dart';
import 'package:ui/theme.dart';
import 'package:ui/ui.dart';

class UITag extends StatelessWidget {
  final String text;
  final UIColorType? colorType;
  final Color? color;
  final Color? backgroundColor;
  final void Function()? onClose;

  /// 主要
  ///
  /// [text] - 文本
  ///
  /// [colorType] - 颜色类型
  const UITag.primary({
    super.key,
    required this.text,
    this.colorType,
  })  : color = null,
        onClose = null,
        backgroundColor = null,
        _type = UITagType.primary;

  /// 朴素
  ///
  /// [text] - 文本
  ///
  /// [colorType] - 颜色类型
  ///
  /// [onClose] - 关闭回调
  const UITag.outlined({
    super.key,
    required this.text,
    this.colorType,
    this.onClose,
  })  : color = null,
        backgroundColor = null,
        _type = UITagType.outlined;

  /// 透明
  ///
  /// [text] - 文本
  ///
  /// [colorType] - 颜色类型
  ///
  /// [onClose] - 关闭回调
  const UITag.transparent({
    super.key,
    required this.text,
    this.colorType,
    this.onClose,
  })  : color = null,
        backgroundColor = null,
        _type = UITagType.transparent;

  /// 自定义
  ///
  /// [text] - 文本
  ///
  /// [colorType] - 颜色类型
  ///
  /// [color] - 文本颜色 优先级大于 colorType
  ///
  /// [backgroundColor] - 背景颜色 优先级大于 colorType
  ///
  /// [onClose] - 关闭回调
  const UITag.custom({
    super.key,
    required this.text,
    this.colorType,
    this.color,
    this.backgroundColor,
    this.onClose,
  }) : _type = UITagType.primary;

  final UITagType _type;

  @override
  Widget build(BuildContext context) {
    Color? containerColor = _type == UITagType.outlined ? null : (backgroundColor ?? getColor(colorType));
    if (_type == UITagType.transparent) {
      containerColor = containerColor?.withAlpha(30);
    }

    final textColor = _type == UITagType.primary
        ? UITheme.buttonTextColor
        : _type == UITagType.transparent || _type == UITagType.outlined
            ? backgroundColor ?? getColor(colorType)
            : null;

    final border = _type == UITagType.outlined ? Border.all(color: getColor(colorType), width: 0.5) : null;
    final widget = Padding(
      padding: UITheme.tagPadding
          .subtract(border == null ? EdgeInsets.zero : const EdgeInsets.all(0.5))
          .subtract(onClose == null ? EdgeInsets.zero : const EdgeInsets.only(right: 5)),
      child: UIText.small(text, color: textColor),
    );

    if (onClose != null) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(UITheme.tagRadius),
          border: border,
          color: containerColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            widget,
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: onClose!,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Icon(Icons.close, color: textColor, size: 16),
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(UITheme.tagRadius),
          border: border,
          color: containerColor,
        ),
        child: widget,
      );
    }
  }
}

enum UITagType {
  primary,
  outlined,
  transparent,
  custom,
}
