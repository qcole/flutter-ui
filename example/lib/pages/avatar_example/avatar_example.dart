import 'package:flutter/material.dart';
import 'package:ui/theme.dart';
import 'package:ui/ui.dart';
import 'package:ui/ui/avatar/avatar.dart';

class AvatarExamplePage extends StatelessWidget {
  const AvatarExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const UIText.large('头像', isBold: true),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIAvatar.image(image: Image.network('https://s1.ax1x.com/2022/11/04/xLB3Kx.jpg')),
            const UIDivider(padding: EdgeInsets.symmetric(vertical: 20)),
            UIAvatar.image(
              image: Image.network('https://s1.ax1x.com/2022/11/04/xLB3Kx.jpg'),
              size: 100,
            ),
            const UIDivider(padding: EdgeInsets.symmetric(vertical: 20)),
            UIAvatar.image(
              image: Image.network('https://s1.ax1x.com/2022/11/04/xLB3Kx.jpg'),
              size: 50,
              radius: 25,
            ),
            const UIDivider(padding: EdgeInsets.symmetric(vertical: 20)),
            Row(
              children: const [
                UIAvatar.text(text: '啊'),
                UIAvatar.text(text: '吧', size: 40),
                UIAvatar.text(text: '次发送到', radius: 10, backgroundColor: UIColor.secondaryColorYellow),
                UIAvatar.text(text: '是否色', radius: 0),
                UIAvatar.text(text: '个', radius: 10, backgroundColor: UIColor.secondaryColorRed),
                UIAvatar.text(text: '多肥', radius: 25, backgroundColor: UIColor.secondaryColorPurple),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
