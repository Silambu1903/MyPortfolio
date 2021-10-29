import 'package:flutter/material.dart';
import 'package:silambu_portfolio/constants/constants.dart';
import 'package:silambu_portfolio/screens/responsive.dart';

import 'HeighLight.dart';
import 'animatedconuter.dart';

class HighLightsInfo extends StatelessWidget {
  HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: const AnimatedCounter(
                        value: 10,
                        text: " +",
                      ),
                      label: "Projects",
                    ),
                    HeighLight(
                      counter: const AnimatedCounter(
                        value: 1,
                        text: " +",
                      ),
                      label: "Experience",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: const AnimatedCounter(
                        value: 3,
                        text: " +",
                      ),
                      label: "GitHub Projects",
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: const AnimatedCounter(
                    value: 10,
                    text: " +",
                  ),
                  label: "Project",
                ),
                HeighLight(
                  counter: const AnimatedCounter(
                    value: 1,
                    text: " +",
                  ),
                  label: "Experience",
                ),
                HeighLight(
                  counter: const AnimatedCounter(
                    value: 3,
                    text: " +",
                  ),
                  label: "GitHub Projects",
                ),
              ],
            ),
    );
  }
}
