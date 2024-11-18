part of 'portfolio_cubit.dart';

class PortfolioState extends Equatable {
  const PortfolioState({
    required this.projectIndex,
    required this.projectDataIndex,
    required this.headerData,
    required this.skillsData,
    required this.experienceData,
  });

  final int projectIndex;
  final int projectDataIndex;
  final List<HeaderData> headerData;
  final List<SkillsData> skillsData;
  final List<ExperienceData> experienceData;

  PortfolioState copyWith({
    int? projectIndex,
    int? projectDataIndex,
    List<HeaderData>? headerData,
    List<SkillsData>? skillsData,
    List<ExperienceData>? experienceData,
  }) =>
      PortfolioState(
        projectIndex: projectIndex ?? this.projectIndex,
        projectDataIndex: projectDataIndex ?? this.projectDataIndex,
        headerData: headerData ?? this.headerData,
        skillsData: skillsData ?? this.skillsData,
        experienceData: experienceData ?? this.experienceData,
      );

  @override
  List<Object> get props => [
        projectIndex,
        projectDataIndex,
        headerData,
        skillsData,
        experienceData,
      ];
}
