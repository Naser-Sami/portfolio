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
            experienceData: [],
          ),
        ) {
    _init();
  }

  final scrollController = ScrollController();
  final List<GlobalKey> sectionKeys = [GlobalKey(), GlobalKey(), GlobalKey(), GlobalKey(), GlobalKey(), GlobalKey(), GlobalKey()];

  late final HeaderService _headerService;
  late final SkillsService _skillsService;
  late final ScrollService _scrollService;
  late final ExperienceService _experienceService;

  void _init() {
    _headerService = HeaderService();
    _skillsService = SkillsService();
    _experienceService = ExperienceService();
    _scrollService = ScrollService(scrollController, sectionKeys);
  }

  void initializeHeaderData() {
    final headerData = _headerService.createInitialData();
    emit(state.copyWith(headerData: headerData));
  }

  void initializeSkillsData() {
    final skillsData = _skillsService.createInitialData();
    emit(state.copyWith(skillsData: skillsData));
  }

  void initializeExperienceData() async {
    final experienceData = await _experienceService.getExperienceData();
    emit(state.copyWith(experienceData: experienceData));
  }

  void onHeaderButtonHover(int id, bool isHovered) {
    final updatedHeaderData = _headerService.hoverState(state.headerData, id, isHovered);
    emit(state.copyWith(headerData: updatedHeaderData));
  }

  void onSkillHover(int id, bool isHovered) {
    final updatedSkillsData = _skillsService.hoverState(state.skillsData, id, isHovered);
    emit(state.copyWith(skillsData: updatedSkillsData));
  }

  void onExperienceHover(int id, bool isHovered) {
    final updatedData = _experienceService.hoverState(state.experienceData, id, isHovered);
    emit(state.copyWith(experienceData: updatedData));
  }

  void scrollToSection(int index) {
    final position = _scrollService.calculateScrollPosition(index);
    if (position != null) {
      _scrollService.animateScrollTo(position);
    }
  }

  // -- Projects
  void setProjectIndex(int index) => emit(state.copyWith(projectIndex: index));
  void setProjectDataIndex(int index) => emit(state.copyWith(projectDataIndex: index));
}
