import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:silambu_portfolio/constants/constants.dart';

class MyKnowledge extends StatefulWidget {
  MyKnowledge({Key? key}) : super(key: key);

  @override
  _MyKnowledgeState createState() => _MyKnowledgeState();
}

class _MyKnowledgeState extends State<MyKnowledge> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Knowledge',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        TextSvg(
          text: "Android , JAVA",
        ),
        TextSvg(
          text: "Flutter , Dart",
        ),
        TextSvg(
          text: "TCP ,  MQTT,  BLE,  AWS",
        ),
        TextSvg(
          text: "RoomDatabase , DynamoDb",
        ),
        TextSvg(
          text: "Adobe XD , Figma",
        ),
        TextSvg(
          text: "GitHub , Firebase",
        ),
      ],
    );
  }
}

class TextSvg extends StatelessWidget {
  TextSvg({Key? key, this.text}) : super(key: key);
  String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 1),
      child: Row(
        children: [
          SvgPicture.asset("assets/check.svg"),
          const SizedBox(
            width: defaultPadding,
          ),
          Text(text!)
        ],
      ),
    );
  }
}
