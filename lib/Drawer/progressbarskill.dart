import 'package:flutter/material.dart';
import 'package:silambu_portfolio/constants/constants.dart';

class ProgressBarSkill extends StatelessWidget {
  ProgressBarSkill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimationProgress(
                perctange: 0.8,
                label: 'Android',
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimationProgress(
                perctange: 0.65,
                label: 'Flutter',
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimationProgress(
                perctange: 0.7,
                label: 'XD',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AnimationProgress extends StatelessWidget {
  AnimationProgress({Key? key, this.perctange, this.label}) : super(key: key);

  final double? perctange;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween(begin: 0.0, end: perctange),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                    child: Text(
                  (value * 100).toInt().toString() + "%",
                  style: Theme.of(context).textTheme.subtitle1,
                ))
              ],
            ),
          ),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          label!,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle1,
        )
      ],
    );
  }
}

class MyAreaInFo extends StatelessWidget {
  MyAreaInFo({Key? key, this.title, this.text}) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            text!,
          ),
        ],
      ),
    );
  }
}
