import 'package:flutter/material.dart';

class MyInfo extends StatefulWidget {
  MyInfo({Key? key}) : super(key: key);

  @override
  _MyInfoState createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(
              flex: 2,
            ),
            CircleAvatar(
              radius: 50,
              child: ClipRRect(
                  //  child: Image.asset('assets/myProfile.png'),
                  ),
            ),
            const Spacer(),
            Text(
              'SILAMBARASAN',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const Text(
              'Software Developer',
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
