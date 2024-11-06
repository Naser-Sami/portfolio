import '/features/portfolio/_portfolio.dart';

abstract class ISkillsService {
  List<SkillsData> createInitialData();
  List<SkillsData> hoverState(List<SkillsData> data, int id, bool isHovered);
}
