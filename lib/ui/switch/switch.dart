import 'package:flutter/cupertino.dart';
import 'package:ui/theme.dart';
import 'package:ui/ui/text/text.dart';

class UISwitch extends StatelessWidget {
  final bool value;
  final bool disable;
  final void Function(bool value) onChanged;
  final String? label;
  final Widget? child;
  final Widget Function(bool value)? builder;

  /// 开关
  ///
  /// [value] - 当前值
  ///
  /// [disable] - 是否禁用 默认false
  ///
  /// [label] - 标签 不可与 child builder 同时指定
  ///
  /// [child] - 内容 不可与 label builder 同时指定
  ///
  /// [builder] - 自定义内容 不可与 label child 同时指定
  const UISwitch({
    Key? key,
    required this.value,
    this.disable = false,
    this.label,
    this.child,
    this.builder,
    required this.onChanged,
  })  : assert(label != null || child != null || builder != null, 'label child builder 必须指定其中一个'),
        assert(
          (label != null && child == null && builder == null) ||
              (child != null && label == null && builder == null) ||
              (builder != null && label == null && child == null),
          'label child builder 只能指定其中一个',
        ),
        super(key: key);

  Widget buildChild() {
    if (label != null) {
      return UIText.large(label!, isBold: true);
    } else if (child != null) {
      return child!;
    } else {
      return builder!(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: UITheme.checkboxPadding,
      color: UIColor.itemBackgroundColor,
      child: Row(
        children: [
          Expanded(child: buildChild()),
          CupertinoSwitch(
            value: value,
            activeColor: UIColor.primaryColor,
            onChanged: disable ? null : onChanged,
          ),
        ],
      ),
    );
  }
}
