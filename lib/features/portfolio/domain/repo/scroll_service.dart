import 'package:flutter/material.dart';

class ScrollService {
  final ScrollController scrollController;
  final List<GlobalKey> sectionKeys;

  ScrollService(this.scrollController, this.sectionKeys);

  double? calculateScrollPosition(int index) {
    if (index < sectionKeys.length && sectionKeys[index].currentContext != null) {
      RenderBox renderBox = sectionKeys[index].currentContext!.findRenderObject() as RenderBox;
      return scrollController.offset + renderBox.localToGlobal(Offset.zero).dy - scrollController.position.pixels;
    }
    return null;
  }

  void animateScrollTo(double position) {
    scrollController.animateTo(
      position - 143,
      duration: const Duration(seconds: 1),
      curve: Curves.linear,
    );
  }
}
