import '/features/portfolio/_portfolio.dart';

class HeaderService implements IHeaderService {
  @override
  List<HeaderData> createInitialData() {
    List<HeaderData> data = [];
    List<String> titles = ['Contact', 'Resume', 'About', 'Certificate', 'Projects', 'Experience', 'Skills'];
    List<int> titlesIds = [6, 0, 1, 4, 2, 5, 3];

    for (int x = 0; x < titles.length; x++) {
      data.add(HeaderData(x, titlesIds[x], titles[x], false));
    }
    return data;
  }

  @override
  List<HeaderData> hoverState(List<HeaderData> headerData, int id, bool isHovered) {
    return headerData.map((item) {
      if (item.id == id) {
        return item.copyWith(isHovered: isHovered);
      }
      return item;
    }).toList();
  }
}
