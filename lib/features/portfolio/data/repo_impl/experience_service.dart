import '/features/portfolio/_portfolio.dart';

class ExperienceService implements ExperienceServiceInterface {
  @override
  List<ExperienceData> getExperienceData() {
    List<ExperienceData> data = [
      ExperienceData(
        id: 0,
        title: "Software Developer at ",
        focusedTitle: "BEYE Group",
        date: "May 2022 - Present",
        description:
            "With over three years of hands-on experience in Flutter development, I have worked at BEYE Group, where I contributed to impactful projects, such as the Analysis Banking System BEYE. This tool empowers bank managers to make informed decisions by monitoring various banking operations and improving strategic planning. I also developed an AI-powered Chat App integrated with ChatGPT 4, customized to align with BEYE’s system modules. Additionally I have build BEYE Website.",
        isHovered: false,
      ),
      ExperienceData(
        id: 1,
        title: "Mobile App Developer ",
        focusedTitle: "FreeLancer",
        date: "2023 - Present",
        description:
            "Sports platform for users in Saudi Arabia to connect with friends for sports, reserve courts, join games, and attend classes led by professional coaches. It includes a mobile app for iOS and Android, built with Flutter using Bloc and Clean Architecture, as well as a Flutter web app for admin and club managers to manage activities.",
        isHovered: false,
      ),
      ExperienceData(
        id: 2,
        title: "Mobile Development (Flutter) ",
        focusedTitle: "Pioneers Academy",
        date: "Nov 2021 - Apr 2022",
        description: "Creating a mobile app for iOS and Android using Flutter",
        isHovered: false,
      ),
    ];

    return data;
  }

  @override
  List<ExperienceData> hoverState(List<ExperienceData> data, int id, bool isHovered) {
    return data.map((item) {
      if (item.id == id) {
        return item.copyWith(isHovered: isHovered);
      }
      return item;
    }).toList();
  }
}
