import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                        width: 124,
                        blurRadius: 2,
                        offset: const Offset(2, 2),
                        isHovered: false,
                        surfaceColor: context.read<PortfolioCubit>().state.projectIndex == i ? Theme.of(context).colorScheme.primary : null,
                        text: ProjectsData.projects[i].language,
                        textStyle: Theme.of(context).textTheme.titleMedium?.apply(color: Colors.white),
                        onTap: () {
                          log('ON PROJECTS TABS CLICK');
                          context.read<PortfolioCubit>().setProjectIndex(i);
                        },
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
                child: ProjectCardWidget(
                  pIndex: context.watch<PortfolioCubit>().state.projectIndex,
                  index: context.watch<PortfolioCubit>().state.projectDataIndex,
                ),
              ),
              TSize.s76.toHeight,
              const ProjectsHorizontalWidget(),
            ],
          ),
        if (!widthCondition)
          Padding(
            padding: padding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  flex: 40,
                  child: ProjectsVerticalWidget(),
                ),
                Expanded(
                  flex: 60,
                  child: ProjectCardWidget(
                    pIndex: context.watch<PortfolioCubit>().state.projectIndex,
                    index: context.watch<PortfolioCubit>().state.projectDataIndex,
                  ),
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
    final data = ProjectsData.projects[context.watch<PortfolioCubit>().state.projectIndex].data;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < data.length; i++)
          Padding(
            padding: EdgeInsets.only(bottom: i == data.length - 1 ? 0 : TPadding.p88),
            child: InkWell(
              onTap: () {
                context.read<PortfolioCubit>().setProjectDataIndex(i);
              },
              child: SizedBox(
                height: 160,
                width: 160,
                child: NeumorphismContainer(
                  inset: false,
                  shape: BoxShape.circle,
                  child: PngImageWidget(
                    name: data[i].image,
                  ),
                ),
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
    final data = ProjectsData.projects[context.watch<PortfolioCubit>().state.projectIndex].data;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < data.length; i++)
            Padding(
              padding: EdgeInsetsDirectional.only(start: i == 0 ? TPadding.p32 : 0, end: i == data.length - 1 ? 0 : TPadding.p32),
              child: InkWell(
                onTap: () {
                  context.read<PortfolioCubit>().setProjectDataIndex(i);
                },
                child: SizedBox(
                  height: 80,
                  width: 80,
                  child: NeumorphismContainer(
                    inset: false,
                    shape: BoxShape.circle,
                    child: PngImageWidget(
                      name: data[i].image,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class ProjectCardWidget extends StatelessWidget {
  final int pIndex;
  final int index;
  const ProjectCardWidget({super.key, required this.pIndex, required this.index});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final data = ProjectsData.projects[pIndex].data[index];

    return InkWell(
      onTap: () {
        log("ON THE SELECTED PROJECT CLICK");
      },
      child: SizedBox(
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
                    child: NeumorphismContainer(
                      child: PngImageWidget(
                        name: data.image,
                      ),
                    ),
                  ),
                ),
                TSize.s20.toHeight,
                TextWidget(
                  data.name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TSize.s20.toHeight,
                TextWidget(
                  data.description,
                  textAlign: TextAlign.center,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                TSize.s24.toHeight,
                InkWell(
                  onTap: () {
                    log(data.gitHubLink);
                  },
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: SvgIconWidget(
                      name: 'git_hub',
                      color: context.theme.colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
