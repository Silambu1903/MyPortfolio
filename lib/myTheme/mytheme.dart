import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silambu_portfolio/constants/constants.dart';
import 'package:silambu_portfolio/screens/homescreen.dart';

class MyTheme extends StatelessWidget {
  MyTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: TextStyle(color: bodyTextColor),
              bodyText2: TextStyle(color: bodyTextColor),
            ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: <String, WidgetBuilder>{
        HomeScreen.id: (BuildContext context) => HomeScreen(),
      },
    );
  }
}
