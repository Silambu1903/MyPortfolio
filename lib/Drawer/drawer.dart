import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:silambu_portfolio/Drawer/myinfo.dart';
import 'package:silambu_portfolio/Drawer/programmingskill.dart';
import 'package:silambu_portfolio/Drawer/progressbarskill.dart';
import 'package:silambu_portfolio/constants/constants.dart';

import 'knowledge.dart';

class DrawLayout extends StatefulWidget {
  DrawLayout({Key? key}) : super(key: key);

  @override
  _DrawLayoutState createState() => _DrawLayoutState();
}

class _DrawLayoutState extends State<DrawLayout> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  MyAreaInFo(
                    title: 'Residence',
                    text: 'TamilNadu',
                  ),
                  MyAreaInFo(
                    title: 'City',
                    text: 'Chennai',
                  ),
                  MyAreaInFo(
                    title: 'Age',
                    text: '22',
                  ),
                  const Divider(),
                  ProgressBarSkill(),
                  const Divider(),
                  ProgrammingSkill(),
                  const Divider(),
                  MyKnowledge(),
                  const Divider(),
                  TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            'DOWNLOAD CV',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color),
                          ),
                          const SizedBox(
                            height: defaultPadding / 2,
                          ),
                          SvgPicture.asset('assets/download.svg'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      color: const Color(0xFF24242E),
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/instagram.svg',
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/github.svg'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/linkedin.svg'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/facebook.svg',
                              color: Color(0xFF8c8c8e),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
