import 'package:flutter/material.dart';
import 'package:silambu_portfolio/constants/constants.dart';

class HeighLight extends StatelessWidget {
  HeighLight({
    Key? key,
    required this.counter,
    this.label,
  }) : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Row(
        children: [
          counter,
          SizedBox(width: defaultPadding / 2),
          Text(label!, style: Theme.of(context).textTheme.subtitle2),
        ],
      ),
    );
  }
}
