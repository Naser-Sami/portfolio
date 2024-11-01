import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/core/_core.dart';

import '/config/_config.dart';

class PortfolioBodyMedium extends StatelessWidget {
  const PortfolioBodyMedium({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = ['Contact', 'Resume', 'About', 'Certificate', 'Projects'];

    return Padding(
      padding: const EdgeInsets.all(48.0),
      child: SizedBox(
        width: TDeviceUtils.getScreenWidth(),
        child: Column(
          children: [
            Center(
              child: Wrap(
                spacing: 48,
                runSpacing: 48,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: items
                    .map(
                      (e) => InkWell(
                        onTap: () {},
                        onHover: (bool val) {
                          log('value = $val');
                        },
                        child: NeumorphismContainer(
                          inset: false,
                          borderRadius: BorderRadius.circular(12),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextWidget(e),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            TSize.s96.toHeight,
            SizedBox(
              width: 450,
              height: 450,
              child: NeumorphismContainer(
                inset: false,
                shape: BoxShape.circle,
                child: Center(child: Text(MediaQuery.of(context).size.width.toString())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
