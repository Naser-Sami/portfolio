part of 'portfolio_cubit.dart';

class PortfolioState extends Equatable {
  const PortfolioState({required this.headerData, required this.skillsData});

  final List<HeaderData> headerData;
  final List<SkillsData> skillsData;

  PortfolioState copyWith({List<HeaderData>? headerData, List<SkillsData>? skillsData}) => PortfolioState(
        headerData: headerData ?? this.headerData,
        skillsData: skillsData ?? this.skillsData,
      );

  @override
  List<Object> get props => [headerData, skillsData];
}
