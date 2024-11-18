class HeaderData {
  int id;
  int widgetId;
  String title;
  bool isHovered;
  HeaderData(this.id, this.widgetId, this.title, this.isHovered);

  HeaderData copyWith({
    int? id,
    int? widgetId,
    String? title,
    bool? isHovered,
  }) =>
      HeaderData(
        id ?? this.id,
        widgetId ?? this.widgetId,
        title ?? this.title,
        isHovered ?? this.isHovered,
      );
}

class SkillsData {
  int id;
  String title;
  bool isHovered;
  SkillsData(this.id, this.title, this.isHovered);

  SkillsData copyWith({
    int? id,
    String? title,
    bool? isHovered,
  }) =>
      SkillsData(
        id ?? this.id,
        title ?? this.title,
        isHovered ?? this.isHovered,
      );
}

class CertificatesData {
  static List<String> certificates = [
    'Flutter-Advanced-Course-Bloc-MVVM',
    'Flutter_Clean_Architecture_Certificate',
    'pioneers_academy_certificate_1',
    'pioneers_academy_certificate_2',
    'pioneers_academy_certificate_3',
    'pioneers_academy_certificate_4',
    'pioneers_academy_certificate_5',
    'pioneers_academy_certificate_6',
    'pioneers_academy_certificate_7',
  ];
}

class ProjectsData {
  static List<ProjectsDataModel> projects = [
    ProjectsDataModel(
      id: 0,
      language: 'Web',
      data: [
        ProjectsDataSubModel(
          id: 0,
          name: 'BEYE Banking Data Analytics Solutions',
          description:
              'The "Analysis Banking System BEYE" is a tool designed for bank managers to help them make timely, informed decisions. It allows them to monitor and track the status of various bank sections, providing insights that support strategic planning and operational efficiency.',
          gitHubLink: 'https://github.com/Naser-Ebedo/beye_v2/tree/__naser__',
          urlLink: '',
          image: 'mockup_1',
        ),
        ProjectsDataSubModel(
          id: 1,
          name: 'BEYE Website',
          description: 'BEYE is a pioneering finch company specialized in providing intelligent business analytics solutions for the banking sector.',
          gitHubLink: 'https://github.com/Naser-Ebedo/BEYE-Group-Website',
          urlLink: 'https://www.beyegroup.com/',
          image: '',
        ),
        ProjectsDataSubModel(
          id: 2,
          name: 'AEYE',
          description: 'AI Chat App integrated with Chat GPT 4 Based on BEYE System Modules',
          gitHubLink: 'https://github.com/Naser-Sami/aeye',
          urlLink: '',
          image: '',
        ),
        ProjectsDataSubModel(
          id: 3,
          name: 'Game Guru Admin',
          description: '',
          gitHubLink: '',
          urlLink: 'https://gameguru.com.sa:631/',
          image: '',
        ),
        ProjectsDataSubModel(
          id: 4,
          name: 'Game Guru Club Manager',
          description: '',
          gitHubLink: '',
          urlLink: 'https://gameguru.com.sa/',
          image: '',
        ),
      ],
    ),
    ProjectsDataModel(
      id: 1,
      language: 'Mobile',
      data: [
        ProjectsDataSubModel(
          id: 0,
          name: 'Game Guru',
          description: '',
          gitHubLink: '',
          urlLink: '',
          image: 'game_guru_logo',
        ),
        ProjectsDataSubModel(
          id: 1,
          name: 'Game Guru Coach & Employee',
          description: '',
          gitHubLink: '',
          urlLink: '',
          image: '',
        ),
      ],
    ),
  ];
}

class ProjectsDataModel {
  final int id;
  final String language;
  List<ProjectsDataSubModel> data;

  ProjectsDataModel({required this.id, required this.language, required this.data});
}

class ProjectsDataSubModel {
  final int id;
  final String name;
  final String description;
  final String gitHubLink;
  final String urlLink;
  final String image;

  ProjectsDataSubModel({
    required this.id,
    required this.name,
    required this.description,
    required this.gitHubLink,
    required this.urlLink,
    required this.image,
  });
}

class ExperienceData {
  final int id;
  final String title;
  final String focusedTitle;
  final String description;
  final String date;
  final bool isHovered;

  ExperienceData({
    required this.id,
    required this.title,
    required this.focusedTitle,
    required this.description,
    required this.date,
    required this.isHovered,
  });

  ExperienceData copyWith({
    int? id,
    String? title,
    String? focusedTitle,
    String? description,
    String? date,
    bool? isHovered,
  }) {
    return ExperienceData(
      id: id ?? this.id,
      title: title ?? this.title,
      focusedTitle: focusedTitle ?? this.focusedTitle,
      description: description ?? this.description,
      date: date ?? this.date,
      isHovered: isHovered ?? this.isHovered,
    );
  }
}
