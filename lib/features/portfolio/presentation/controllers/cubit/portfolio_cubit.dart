import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'portfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit() : super(const PortfolioState(headerData: []));

  final scrollController = ScrollController();
  final List<GlobalKey> sectionKeys = [GlobalKey(), GlobalKey(), GlobalKey(), GlobalKey(), GlobalKey(), GlobalKey(), GlobalKey()];

  // Method to scroll to a specific section
  void scrollToSection(int index) {
    if (index < sectionKeys.length && sectionKeys[index].currentContext != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        // Get the widget's render box
        RenderBox renderBox = sectionKeys[index].currentContext!.findRenderObject() as RenderBox;
        // Calculate the position relative to the scrollable area
        double position = scrollController.offset + renderBox.localToGlobal(Offset.zero).dy - scrollController.position.pixels;

        // Scroll to the calculated position
        scrollController.animateTo(
          position - 143,
          duration: const Duration(seconds: 1),
          curve: Curves.linear,
        );
      });
    }
  }

  void fillInitialHeaderData() {
    List<HeaderData> newData = [];
    List<String> titles = ['Contact', 'Resume', 'About', 'Certificate', 'Projects', 'Experience', 'Skills'];
    List<int> titlesIds = [6, 0, 1, 4, 2, 5, 3];

    for (int x = 0; x < titles.length; x++) {
      newData.add(HeaderData(x, titlesIds[x], titles[x], false));
    }

    emit(state.copyWith(headerData: newData));
  }

  void onButtonHover(int id, bool isHovered) {
    final updatedHeaderData = state.headerData.map((item) {
      if (item.id == id) {
        return item.copyWith(isHovered: isHovered); // Ensure `copyWith` creates a new instance
      }
      return item;
    }).toList();

    emit(state.copyWith(headerData: updatedHeaderData)); // Emit a new state with updated data
  }

  ScrollController carouselController = ScrollController();
  List<String> certificates = [
    'Flutter_Clean_Architecture_Certificate',
    'pioneers_academy_certificate_1',
    'pioneers_academy_certificate_2',
    'pioneers_academy_certificate_3',
    'pioneers_academy_certificate_4',
    'pioneers_academy_certificate_5',
    'pioneers_academy_certificate_6',
    'pioneers_academy_certificate_7',
  ];
}
