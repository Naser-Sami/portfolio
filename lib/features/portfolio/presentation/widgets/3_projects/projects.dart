import 'package:flutter/material.dart';

import '/core/_core.dart';
import '/config/_config.dart';
import '/features/_features.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final widthCondition = MediaQuery.of(context).size.width < 800;
    final width = MediaQuery.of(context).size.width;
    final padding = EdgeInsets.symmetric(horizontal: widthCondition ? width * 0.10 : width * 0.15);

    return Column(
      children: [
        Padding(
          padding: padding,
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
        TSize.s96.toHeight,
        if (widthCondition)
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: padding,
                child: const ProjectCardWidget(),
              ),
              TSize.s76.toHeight,
              const ProjectsHorizontalWidget(),
            ],
          ),
        if (!widthCondition)
          Padding(
            padding: padding,
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 40,
                  child: ProjectsVerticalWidget(),
                ),
                Expanded(
                  flex: 60,
                  child: ProjectCardWidget(),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class ProjectsVerticalWidget extends StatelessWidget {
  const ProjectsVerticalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < 3; i++)
          Padding(
            padding: EdgeInsets.only(bottom: i == 2 ? 0 : TPadding.p88),
            child: const SizedBox(
              height: 160,
              width: 160,
              child: NeumorphismContainer(
                inset: false,
                shape: BoxShape.circle,
                child: FlutterLogo(),
              ),
            ),
          ),
      ],
    );
  }
}

class ProjectsHorizontalWidget extends StatelessWidget {
  const ProjectsHorizontalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 3; i++)
            Padding(
              padding: EdgeInsetsDirectional.only(start: i == 0 ? TPadding.p32 : 0, end: i == 2 ? 0 : TPadding.p32),
              child: const SizedBox(
                height: 80,
                width: 80,
                child: NeumorphismContainer(
                  inset: false,
                  shape: BoxShape.circle,
                  child: FlutterLogo(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 570,
      child: NeumorphismContainer(
        inset: false,
        child: Padding(
          padding: const EdgeInsets.all(TPadding.p24),
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                  width: width,
                  child: const NeumorphismContainer(
                    child: FlutterLogo(),
                  ),
                ),
              ),
              TSize.s20.toHeight,
              TextWidget(
                ProjectsData.projects.first.data.first.name,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TSize.s20.toHeight,
              TextWidget(
                ProjectsData.projects.first.data.first.description,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TSize.s24.toHeight,
              const SizedBox(
                width: 50,
                height: 50,
                child: FlutterLogo(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
