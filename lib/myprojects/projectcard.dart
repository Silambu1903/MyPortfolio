import 'package:flutter/material.dart';
import 'package:silambu_portfolio/Model/projects.dart';
import 'package:silambu_portfolio/constants/constants.dart';
import 'package:silambu_portfolio/screens/responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final MyProject project;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
      child: Card(
        elevation: 30,
        shadowColor: secondaryColor,
        child: Container(
          padding: const EdgeInsets.all(defaultPadding),
          color: secondaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                project.title!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                project.description!,
                maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
