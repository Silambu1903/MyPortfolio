class MyProject {
  final String? title, description, client;

  MyProject({this.title, this.description, this.client});
}

List<MyProject> projects = [
  MyProject(
      title: "KARAK ",
      description:
          " This project aims to automate the process of making tea. It can be done "
          "by hardware that controls the main motors and a mobile app that is used to customize and make tea.",
      client: " Pradeep Stainless India Private Limited"),
  MyProject(
      title: "AVM (TABLET)",
      description:
          "It’s a replacement for the PCB display of a vending machine that can perform several operations like Brewing Beverages,"
          " Dispensing Beverages, Cleaning drums and several other operations.",
      client: 'Pradeep Stainless India Private Limited'),
  MyProject(
      title: "AUTO-STABILIZER",
      description:
          "It’s a remote controller for AC stabilizers. Users can access"
          " their stabilizer both locally(WiFi) and globally(mqtt). ",
      client: 'Sense Electronics PVT.LTD'),
  MyProject(
      title: "Water Treatment Plant (TABLET)",
      description:
          "It’s an industrial machinery controller which can control all the sensors and calibration process.",
      client: 'ION Exchange India Limited'),
  MyProject(
    title: "Safe-C19",
    description:
        "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app that can run both Andriod and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator.",
  ),
  MyProject(
    title: "Covid-19 App - Flutter UI",
    description:
        "We redesign the outlook app also make it responsive so that you can run it everywhere on your phone, tab, or web. In this flutter responsive video, we will show you the real power of flutter. Make mobile, web, and desktop app from a single codebase.",
  ),
];
