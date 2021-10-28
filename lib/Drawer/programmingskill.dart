import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:silambu_portfolio/constants/constants.dart';

class ProgrammingSkill extends StatefulWidget {
  ProgrammingSkill({Key? key}) : super(key: key);

  @override
  _ProgrammingSkillState createState() => _ProgrammingSkillState();
}

class _ProgrammingSkillState extends State<ProgrammingSkill> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        LinearProgressBar(
          perctange: 0.7,
          label: 'Java',
        ),
        LinearProgressBar(
          perctange: 0.6,
          label: 'Dart',
        ),
        LinearProgressBar(
          perctange: 0.9,
          label: 'XML',
        ),
        LinearProgressBar(
          perctange: 0.8,
          label: 'UI/UX',
        ),
        LinearProgressBar(
          perctange: 0.5,
          label: 'Jetpack compose',
        )
      ],
    );
  }
}

class LinearProgressBar extends StatelessWidget {
  LinearProgressBar({Key? key, this.perctange, this.label}) : super(key: key);

  final double? perctange;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 1),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: perctange),
        duration: defaultDuration,
        builder: (context, double value, build) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label!,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  (value * 100).toInt().toString() + "%",
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            )
          ],
        ),
      ),
    );
  }
}
