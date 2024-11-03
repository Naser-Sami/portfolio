import 'package:flutter/material.dart';

import '/core/_core.dart';
import '/config/_config.dart';

class ProgressBarWidget extends StatelessWidget {
  const ProgressBarWidget({super.key, required this.titleEnd, required this.title});

  final bool titleEnd;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: titleEnd ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        TextWidget(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        TSize.s24.toHeight,
        Container(
          height: 5,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.inversePrimary,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(4),
                ),
              )
            ],
          ),
        ),
        TSize.s76.toHeight,
      ],
    );
  }
}
