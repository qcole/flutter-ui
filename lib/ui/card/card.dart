import 'package:flutter/material.dart';
import 'package:ui/theme.dart';
import 'package:ui/ui/text/text.dart';

class UICard extends StatelessWidget {
  final Widget? icon;
  final String? title;
  final String? extra;
  final Widget child;
  final EdgeInsets? padding;
  final UICardContentType contentType;

  /// 卡片
  ///
  /// [icon] - 标题栏左边图标
  ///
  /// [title] - 标题文本
  ///
  /// [extra] - 附加信息
  ///
  /// [padding] - 外边距
  ///
  /// [contentType] - 内容类型 [UICardContentType] (默认/图片)
  const UICard({
    super.key,
    this.icon,
    required String this.title,
    required String this.extra,
    this.padding,
    this.contentType = UICardContentType.none,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? UITheme.cardPadding,
      child: Container(
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(color: UIColor.itemBackgroundColor, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  if (icon != null) icon!,
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: UIText.large(title!, isBold: true, colorType: UIColorType.secondary),
                    ),
                  ),
                  UIText.small(extra!, colorType: UIColorType.secondary),
                ],
              ),
            ),
            if (contentType != UICardContentType.image) const Divider(),
            if (contentType == UICardContentType.image)
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(UITheme.cardRadius),
                  bottomRight: Radius.circular(UITheme.cardRadius),
                ),
                child: child,
              )
            else
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: child,
              ),
          ],
        ),
      ),
    );
  }
}

enum UICardContentType {
  none,
  image,
}
