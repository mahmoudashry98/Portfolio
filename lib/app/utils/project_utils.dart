class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/imgs/Jadwelny.jpeg',
    icons: 'assets/imgs/flutter.png',
    titles: 'Jadwelny App',
    description:
        'Jadwelny simplifies travel booking. Our user-friendly platform leverages AI to offer personalized experiences, from finding hotels to booking activities. Enjoy hassle-free planning and personalized deals for your next trip',
    links: 'https://apps.apple.com/ae/app/jadwelny/id6447790149',
  ),
  ProjectUtils(
    banners: 'assets/imgs/payment.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Payment Gateway',
    description:
        'Developed Payment Gateway, a Flutter app showcasing seamless integration with multiple payment gateways. It serves as a reference for developers, emphasizing secure backend integration for efficient payment processing in Flutter projects.',
    links: 'https://github.com/mahmoudashry98/Payment-Gateway',
  ),
  ProjectUtils(
    banners: 'assets/imgs/doc_app.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Doctor App',
    description:
        'Created a doctor app facilitating seamless appointment scheduling and medical consultations. Integrated user-friendly interfaces and secure data storage for efficient patient-doctor interactions.',
    links: 'https://github.com/mahmoudashry98/doctor_app',
  ),
  ProjectUtils(
    banners: 'assets/imgs/project.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Survival Map',
    description:
        "Developed a COVID-19 tracking app in Flutter, featuring real-time alerts on infected individuals' last locations. Integrated Google Maps and Firebase, including Firestore for live chat. Utilized Bloc for state management, achieving an A grade in project assessment.",
    links: 'https://github.com/mahmoudashry98/Survival-Map?tab=readme-ov-file',
  ),
  // ProjectUtils(
  //   banners: 'assets/imgs/ToDo.png',
  //   icons: 'assets/imgs/flutter.png',
  //   titles: 'Awesome Plant App UI',
  //   description:
  //       'This is a just Plant App UI by using flutter, source code is also available, check below.',
  //   links: 'https://github.com/sudeshnb/flutter_plant_app.git',
  // ),
];
