import '/features/portfolio/_portfolio.dart';

class SkillsService implements ISkillsService {
  @override
  List<SkillsData> createInitialData() {
    List<SkillsData> data = [];
    List<String> skills = [
      'Mobile Dev',
      'Web Dev',
      'Flutter',
      'Dart',
      'Python',
      'C#',
      '.Net',
      'Sql',
      'BloC',
      'Provider',
      'Git',
      'GitHub',
      'Dio',
      'Rest API\'s',
      'Go-Routes',
      'Animations',
      'OOP',
      'DSA',
      'S.O.L.I.D'
    ];

    for (int x = 0; x < skills.length; x++) {
      data.add(SkillsData(x, skills[x], false));
    }

    return data;
  }

  @override
  List<SkillsData> hoverState(List<SkillsData> data, int id, bool isHovered) {
    return data.map((item) {
      if (item.id == id) {
        return item.copyWith(isHovered: isHovered);
      }
      return item;
    }).toList();
  }
}
