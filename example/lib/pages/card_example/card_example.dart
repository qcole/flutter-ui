import 'package:flutter/material.dart';
import 'package:ui/ui/card/card.dart';
import 'package:ui/ui/text/text.dart';

class CardExamplePage extends StatelessWidget {
  const CardExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const UIText.large('卡片'),
      ),
      body: ListView(
        children: [
          const UICard(
            icon: Icon(Icons.access_alarms_rounded, size: 50),
            title: '标题文字',
            extra: '额外信息',
            child: UIText.primary(
              '内容啊啊大啊安德森结束过后开始觉得法国会接口的时光看见对方更好的接口发个好的接口色返回接口重新准备女看见你块结束对法国弄儿胡同耳机哦多个后端佛好感动返回重新就不会动发个后端哦法国东方机构的法国加哦d',
            ),
          ),
          UICard(
            icon: const Icon(Icons.access_alarms_rounded, size: 50),
            title: '图片内容',
            extra: '下午 14:40',
            contentType: UICardContentType.image,
            child: Image.network('https://th.bing.com/th/id/OIP.0Ug0nrTC9AThfi4z3cubhgHaEK?w=321&h=180&c=7&r=0&o=5&dpr=2&pid=1.7'),
          ),
        ],
      ),
    );
  }
}
