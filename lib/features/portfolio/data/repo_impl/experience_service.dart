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
        title: "Software Engineer at ",
        focusedTitle: "Google",
        date: "2026 - 2030",
        description:
            "I am a software engineer at Google. I work on the Google Maps team. I am responsible for developing the Google Maps app. I am also responsible for developing the Google Maps website.",
        isHovered: false,
      ),
      ExperienceData(
        id: 2,
        title: "Software Engineer at ",
        focusedTitle: "Apple",
        date: "2030 - 2040",
        description: "I am a software engineer at Apple. I work on the Apple app.",
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
