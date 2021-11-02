class MyProject {
  final String? title, description, client;

  MyProject({this.title, this.description, this.client});
}

List<MyProject> projects = [
  MyProject(
      title: "KARAK ",
      description:
          " This project aims to automate the process of making tea. It can be done "
          "by hardware that controls the main motors and a mobile app that is used to customize and make tea. ",
      client: " Pradeep Stainless India Private Limited"),
  MyProject(
      title: "AVM (TABLET)",
      description:
          "It’s a replacement for the PCB display of a vending machine that can perform several operations like Brewing Beverages,"
          " Dispensing Beverages, Cleaning drums and several other operations. ",
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
          "It’s an Automatic Contactless Face Mask detection/Temperature detection/Hand Sanitizer app.",
      client: 'Rax-Tech International'),
  MyProject(
      title: "BMS Config",
      description:
          "It’s an Home controller App Three Channel and Single Channel Turn on and Off all Your Home Electrical Devices .",
      client: 'Rax-Tech International'),
];
