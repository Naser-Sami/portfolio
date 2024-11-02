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
      padding: EdgeInsets.symmetric(horizontal: widthCondition ? width * 0.10 : width * 0.15),
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
      height: 350,
      width: MediaQuery.of(context).size.width,
      child: NeumorphismContainer(
        inset: false,
        borderRadius: BorderRadius.circular(30),
        child: const PngImageWidget(
          name: 'image-removebg-preview2',
          fit: BoxFit.contain,
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
      crossAxisAlignment: widthCondition ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        TextWidget(
          "About Me",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        TSize.s32.toHeight,
        TextWidget(
          textAlign: widthCondition ? TextAlign.center : TextAlign.start,
          "I am actively seeking opportunities to apply my acquired skills and knowledge to real-world projects. My educational background has equipped me with a solid foundation in AI and ML algorithms, data analysis, and programming languages such as Python. Additionally, I have gained practical experience through hands-on projects, both independently and collaboratively.",
        ),
      ],
    );
  }
}
