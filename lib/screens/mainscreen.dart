import 'package:flutter/material.dart';
import 'package:silambu_portfolio/compenets/hightlightext.dart';
import 'package:silambu_portfolio/constants/constants.dart';
import 'package:silambu_portfolio/myprojects/banner.dart';
import 'package:silambu_portfolio/myprojects/myprojects.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeBanner(),
          HighLightsInfo(),
          Projects(),
        ],
      ),
    );
  }
}
