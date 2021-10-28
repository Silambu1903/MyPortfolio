import 'package:flutter/material.dart';
import 'package:silambu_portfolio/Drawer/drawer.dart';
import 'package:silambu_portfolio/constants/constants.dart';

class HomeScreen extends StatefulWidget {
  static String id = "/HomeScreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          constraints: const BoxConstraints(maxHeight: maxWidth),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: DrawLayout(),
              ),
              Expanded(
                flex: 7,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
