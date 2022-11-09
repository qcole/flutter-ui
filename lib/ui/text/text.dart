import 'package:flutter/material.dart';
import 'package:ui/theme.dart';

class UIText extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontSize;
  final bool isBold;
  final UIColorType? colorType;
  final bool disable;


  /// 主要
  ///
  /// [text] - 文本
  ///
  /// [color] - 颜色
  ///
  /// [colorType] - 颜色类型
  ///
  /// [isBold] - 是否加粗
  ///
  /// [disable] - 是否禁用
  const UIText.primary(
    this.text, {
    super.key,
    this.color,
    this.colorType,
    this.isBold = false,
    this.disable = false,
  }) : fontSize = 14;

  /// 大号
  ///
  /// [text] - 文本
  ///
  /// [color] - 颜色
  ///
  /// [colorType] - 颜色类型
  ///
  /// [isBold] - 是否加粗
  ///
  /// [disable] - 是否禁用
  const UIText.large(
    this.text, {
    super.key,
    this.color,
    this.colorType,
    this.isBold = false,
    this.disable = false,
  }) : fontSize = 16;


  /// 小号
  ///
  /// [text] - 文本
  ///
  /// [color] - 颜色
  ///
  /// [colorType] - 颜色类型
  ///
  /// [isBold] - 是否加粗
  ///
  /// [disable] - 是否禁用
  const UIText.small(
    this.text, {
    super.key,
    this.color,
    this.colorType,
    this.isBold = false,
    this.disable = false,
  }) : fontSize = 12;


  /// 自定义
  ///
  /// [text] - 文本
  ///
  /// [color] - 颜色
  ///
  /// [colorType] - 颜色类型
  ///
  /// [fontSize] - 字体大小
  ///
  /// [isBold] - 是否加粗
  ///
  /// [disable] - 是否禁用
  const UIText.custom(
    this.text, {
    super.key,
    this.color,
    this.colorType,
    this.fontSize = 12,
    this.isBold = false,
    this.disable = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: disable ? UIColor.textColorDisabled : color ?? (colorType != null ? getColor(colorType) : null),
        fontSize: fontSize,
        fontWeight: isBold ? FontWeight.bold : null,
      ),
    );
  }
}
