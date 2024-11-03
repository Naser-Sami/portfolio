import 'package:flutter/material.dart';

import '/features/_features.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final widthCondition = MediaQuery.of(context).size.width < 1100;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widthCondition ? width * 0.10 : width * 0.15),
      child: const Column(
        children: [
          ProgressBarWidget(title: "Skills", titleEnd: true),
        ],
      ),
    );
  }
}
