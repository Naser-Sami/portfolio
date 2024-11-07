part of 'portfolio_cubit.dart';

class PortfolioState extends Equatable {
  const PortfolioState({
    required this.projectIndex,
    required this.projectDataIndex,
    required this.headerData,
    required this.skillsData,
  });

  final int projectIndex;
  final int projectDataIndex;
  final List<HeaderData> headerData;
  final List<SkillsData> skillsData;

  PortfolioState copyWith({int? projectIndex, int? projectDataIndex, List<HeaderData>? headerData, List<SkillsData>? skillsData}) => PortfolioState(
        projectIndex: projectIndex ?? this.projectIndex,
        projectDataIndex: projectDataIndex ?? this.projectDataIndex,
        headerData: headerData ?? this.headerData,
        skillsData: skillsData ?? this.skillsData,
      );

  @override
  List<Object> get props => [projectIndex, projectDataIndex, headerData, skillsData];
}
