import 'package:flutter/material.dart';
import 'package:silambu_portfolio/Model/projects.dart';
import 'package:silambu_portfolio/constants/constants.dart';
import 'package:silambu_portfolio/myprojects/projectcard.dart';
import 'package:silambu_portfolio/screens/responsive.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Text(
            "My Projects",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(height: defaultPadding),
        const Responsive(
          mobile: GridViewCard(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: GridViewCard(crossAxisCount: 2),
          tablet: GridViewCard(childAspectRatio: 1.1),
          desktop: GridViewCard(),
        )
      ],
    );
  }
}

class GridViewCard extends StatelessWidget {
  const GridViewCard({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: projects[index],
      ),
    );
  }
}
