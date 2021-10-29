import 'package:flutter/material.dart';
import 'package:silambu_portfolio/Drawer/drawer.dart';
import 'package:silambu_portfolio/constants/constants.dart';
import 'package:silambu_portfolio/screens/responsive.dart';

import 'mainscreen.dart';

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
        appBar: Responsive.isDesktop(context)
            ? null
            : AppBar(
                backgroundColor: bgColor,
                leading: Builder(
                  builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(Icons.menu),
                  ),
                ),
              ),
        drawer: DrawLayout(),
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxHeight: maxWidth),
            child: Row(
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(
                    flex: 2,
                    child: DrawLayout(),
                  ),
                const SizedBox(width: 5),
                Expanded(
                  flex: 7,
                  child: MainScreen(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
