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
      language: 'Flutter',
      data: [
        ProjectsDataSubModel(
          id: 0,
          name: 'BEYE Banking Data Analytics Solutions',
          description:
              'The "Analysis Banking System BEYE" is a tool designed for bank managers to help them make timely, informed decisions. It allows them to monitor and track the status of various bank sections, providing insights that support strategic planning and operational efficiency.',
          gitHubLink: 'https://github.com/Naser-Ebedo/beye_v2/tree/__naser__',
          urlLink: '',
          image: '',
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
          name: 'Game Guru',
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
