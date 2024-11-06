import '/features/portfolio/_portfolio.dart';

abstract class IHeaderService {
  List<HeaderData> createInitialData();
  List<HeaderData> hoverState(List<HeaderData> headerData, int id, bool isHovered);
}
