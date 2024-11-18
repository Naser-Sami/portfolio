import '/features/portfolio/_portfolio.dart';

abstract class ExperienceServiceInterface {
  List<ExperienceData> getExperienceData();
  List<ExperienceData> hoverState(List<ExperienceData> data, int id, bool isHovered);
}
