import 'package:flutter/material.dart';

import '/config/_config.dart';

class NeumorphismButton extends StatelessWidget {
  const NeumorphismButton({
    super.key,
    this.onTap,
    this.onHover,
    required this.isHovered,
    required this.text,
  });

  final void Function()? onTap;
  final void Function(bool)? onHover;
  final bool isHovered;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onHover: (bool val) => onHover!(val),
      child: AnimatedContainer(
        width: 150,
        height: 50,
        duration: const Duration(milliseconds: 100),
        child: NeumorphismContainer(
          inset: isHovered,
          borderRadius: BorderRadius.circular(24),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: TextWidget(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: isHovered ? FontWeight.bold : null,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
