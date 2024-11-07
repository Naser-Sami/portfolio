import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/features/portfolio/_portfolio.dart';

part 'portfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit()
      : super(
          const PortfolioState(
            projectIndex: 0,
            projectDataIndex: 0,
            headerData: [],
            skillsData: [],
          ),
        ) {
    _init();
  }

  final scrollController = ScrollController();
  final List<GlobalKey> sectionKeys = [GlobalKey(), GlobalKey(), GlobalKey(), GlobalKey(), GlobalKey(), GlobalKey(), GlobalKey()];

  late final HeaderService headerService;
  late final SkillsService skillsService;
  late final ScrollService scrollService;

  void _init() {
    headerService = HeaderService();
    skillsService = SkillsService();
    scrollService = ScrollService(scrollController, sectionKeys);
  }

  void initializeHeaderData() {
    final headerData = headerService.createInitialData();
    emit(state.copyWith(headerData: headerData));
  }

  void initializeSkillsData() {
    final skillsData = skillsService.createInitialData();
    emit(state.copyWith(skillsData: skillsData));
  }

  void onHeaderButtonHover(int id, bool isHovered) {
    final updatedHeaderData = headerService.hoverState(state.headerData, id, isHovered);
    emit(state.copyWith(headerData: updatedHeaderData));
  }

  void onSkillHover(int id, bool isHovered) {
    final updatedSkillsData = skillsService.hoverState(state.skillsData, id, isHovered);
    emit(state.copyWith(skillsData: updatedSkillsData));
  }

  void scrollToSection(int index) {
    final position = scrollService.calculateScrollPosition(index);
    if (position != null) {
      scrollService.animateScrollTo(position);
    }
  }

  // -- Projects
  void setProjectIndex(int index) => emit(state.copyWith(projectIndex: index));
  void setProjectDataIndex(int index) => emit(state.copyWith(projectDataIndex: index));
}
