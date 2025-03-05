import 'package:flutter/material.dart';

import '/core/_core.dart';
import '/config/_config.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final widthCondition = MediaQuery.of(context).size.width < 1100;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: widthCondition ? width * 0.10 : width * 0.15),
      child: widthCondition
          ? Column(
              children: [
                const AboutMeImageWidget(),
                TSize.s48.toHeight,
                const AboutMeInfoWidget(),
              ],
            )
          : Row(
              children: [
                const Expanded(child: AboutMeImageWidget()),
                TSize.s48.toWidth,
                const Expanded(child: AboutMeInfoWidget()),
              ],
            ),
    );
  }
}

class AboutMeImageWidget extends StatelessWidget {
  const AboutMeImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      width: 380,
      child: NeumorphismContainer(
        inset: false,
        borderRadius: BorderRadius.circular(30),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: const JpegImageWidget(
            name: 'naser_sami_1',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class AboutMeInfoWidget extends StatelessWidget {
  const AboutMeInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final widthCondition = MediaQuery.of(context).size.width < 1100;

    return Column(
      crossAxisAlignment:
          widthCondition ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        TextWidget(
          "About Me",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        TSize.s32.toHeight,
        const TextWidget(
          textAlign: TextAlign.start,
          """I’m a dedicated Mobile and Web Software Developer with over 3.5 years of experience in building innovative, cross-platform applications using Flutter and Dart.
I specialize in creating efficient, scalable, and user-friendly solutions that drive business growth and enhance user experiences.
My expertise spans Clean Architecture, SOLID Principles, and advanced Flutter design patterns.
I’m passionate about solving complex problems and delivering high-quality, well-documented software. 
My journey in tech is fueled by a commitment to continuous learning and staying ahead of industry trends. 
Currently, I’m expanding my skills in C#, .NET, SQL, and Python.""",
        ),
      ],
    );
  }
}
