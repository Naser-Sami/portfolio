// Package
import 'package:flutter/material.dart';
import '/core/_core.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.smallLayout,
    required this.mediumLayout,
    required this.largeLayout,
    this.layout4K,
  });

  final Widget smallLayout;
  final Widget mediumLayout;
  final Widget largeLayout;
  final Widget? layout4K;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints bc) {
        switch (bc.maxWidth) {
          case >= TDeviceUtils.layout4K:
            return layout4K ?? largeLayout;
          case >= TDeviceUtils.largeLayout:
            return largeLayout;
          case > TDeviceUtils.smallLayout:
            return mediumLayout;
          case <= TDeviceUtils.smallLayout:
            return smallLayout;

          default:
            return const SizedBox(child: Text('NO Layout available!'));
        }
      },
    );
  }
}

/// Mobile S   320px
/// Mobile M   375px
/// Mobile L   425px
/// Tablet T   768px
/// Laptop S  1024px
/// Laptop L  1440px
/// Laptop 4K 2560px
