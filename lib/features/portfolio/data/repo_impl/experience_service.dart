import '/features/portfolio/_portfolio.dart';

class ExperienceService implements ExperienceServiceInterface {
  @override
  List<ExperienceData> getExperienceData() {
    List<ExperienceData> data = [
      ExperienceData(
        id: 0,
        title: "Software Developer, ",
        focusedTitle: "BEYE Group",
        date: "May 2022 - Present",
        description: [
          {
            'title': 'Analysis Banking System: ',
            'description':
                'Developed a comprehensive tool for bank managers to monitor and track the status of various bank sections, enabling timely and informed decision-making. The system supports strategic planning and operational efficiency through real-time insights.'
          },
          {
            'title': 'AEYE - AI Chat App: ',
            'description':
                'Integrated ChatGPT-4 into the BEYE system, creating an AI-powered chat application that enhances user interaction and provides advanced data analysis capabilities.'
          }
        ],
        isHovered: false,
      ),
      ExperienceData(
        id: 1,
        title: "Software Developer, ",
        focusedTitle: "ShopZen",
        date: "Jan 2024 - Mar 2025",
        description: [
          {
            'title': 'E-commerce and Chat app: ',
            'description':
                "Developed ShopZen, a feature-rich shopping app designed to enhance the online shopping experience. The app includes an integrated chat feature, smart notifications with deep-linking, secure payments via Stripe, and real-time order tracking using maps. Built with Clean Architecture, Streams and Bloc/Cubit for state management, the app also incorporates Firebase Authentication, social login, and local storage solutions like Hive and SQLite. Utilized GoRouter for efficient navigation and followed dependency injection principles for a modular and scalable codebase. This project served as a personal learning initiative to explore advanced Flutter development techniques and best practices."
          }
        ],
        isHovered: false,
      ),
      ExperienceData(
        id: 2,
        title: "Software Developer ( Mobile and Web ), ",
        focusedTitle: "FreeLancer",
        date: "Nov 2023 - Jun 2024",
        description: [
          {
            'title': 'Sports Platform: ',
            'description':
                "Developed a sports platform for users in Saudi Arabia, enabling them to connect with friends, reserve courts, join games, and attend classes led by professional coaches. The platform includes a cross-platform mobile app (iOS & Android) built with Flutter using Bloc and Clean Architecture, as well as a Flutter web app for admin and club managers to manage activities."
          }
        ],
        isHovered: false,
      ),
      ExperienceData(
        id: 3,
        title: "Mobile Development ( Flutter ), ",
        focusedTitle: "Pioneers Academy",
        date: "Nov 2021 - Apr 2022",
        description: [
          {
            'title': 'Flutter internship: ',
            'description':
                "Completed a Flutter internship, building cross-platform apps for iOS and Android-. Progressed from basics to advanced topics like state management and API integration. Final project was an OpenSooq clone, featuring user authentication, product listings, and real-time updates, while following clean architecture and best practices."
          }
        ],
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
