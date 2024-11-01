import 'package:flutter/material.dart';
import '/core/_core.dart';
import '/config/_config.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgIconWidget(
        name: 'FoodielandLogo',
        color: TFunctions.isDarkMode(context) ? Colors.white : null,
      ),
    );
  }
}
