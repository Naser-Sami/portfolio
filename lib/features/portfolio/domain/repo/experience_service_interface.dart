import '/features/portfolio/_portfolio.dart';

abstract class ExperienceServiceInterface {
  Future<List<ExperienceData>> getExperienceData();
  List<ExperienceData> hoverState(List<ExperienceData> data, int id, bool isHovered);
}
