import '/features/portfolio/_portfolio.dart';

class SkillsService implements ISkillsService {
  @override
  List<SkillsData> createInitialData() {
    List<SkillsData> data = [];

    List<String> skills = [
      'Flutter',
      'Dart',
      'C#',
      'ASP.Net',
      'Python',
      'SQL',
      'BloC',
      'Provider',
      'Dio',
      'Critical Thinking',
      'Problem Solving',
      'Analysis',
      'Design',
      'Leadership',
      'Logical Thinking',
      'DSA',
      'OOP',
      'Animations',
      'Collaboration',
      'Git',
      'Organization',
      'GitHub',
      'Rest API/’s',
      'S.O.L.I.D',
      'Responsive Design',
      'Mobile Development',
      'Web Development',
      'Go-Routes'
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
