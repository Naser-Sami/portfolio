import 'package:flutter/material.dart';

import '/config/_config.dart';
import '/features/_features.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final widthCondition = MediaQuery.of(context).size.width < 1100;
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widthCondition ? width * 0.10 : width * 0.15),
          child: const ProgressBarWidget(title: "Projects", titleEnd: false),
        ),
        SizedBox(
          width: width,
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < ProjectsData.projects.length; i++)
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(i == 0 ? TPadding.p48 : 0, TPadding.p08, TPadding.p24, TPadding.p08),
                      child: NeumorphismButton(
                        blurRadius: 2,
                        offset: const Offset(2, 2),
                        isHovered: false,
                        surfaceColor: Theme.of(context).colorScheme.primary,
                        text: ProjectsData.projects[i].language,
                        textStyle: Theme.of(context).textTheme.titleMedium?.apply(color: Colors.white),
                        onTap: () {},
                        onHover: (bool val) {},
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
