import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';

//Update with colors of your choice for dp background gradient
Color kGradient1 = Colors.black;
Color kGradient2 = Colors.orange;

String imagePath = "images/shresth.jpeg";

//String data to modify
String name = "Shresth Kapoor";
String username = "flutterroles";

//Link to resume on Google Drive
String resumeLink =
    "https://drive.google.com/file/d/1b_S115ajb4TL113RvPSsmXmxnCe7G3o-/view?usp=sharing";

//Contact Email
String contactEmail = "mail@shresthkapoor7@gmail.com";

String aboutWorkExperience = '''
I am an app developer with industry experience building android applications. I specialize in C++ and have professional experience working with Flutter. I also have experience working with C and Python. Currently pursuing my BTech in Computer Science Engineering at SRM ist.
''';

String aboutMeSummary = '''
Final year Computer Science Engineering student at SRM institute of Science and Technology. \nAn app developer with experience in creating cross platform apps.  
''';

String location = "Agra, India";
String website = "shresthkapoor.in";
String portfolio = "shresthkapoor";
String email = "shresthkapoor7";

List<Project> projectList = [
  Project(
      date: "Jul 2022 - Present",
      name: "Portfoio ",
      description:
          "A responsive portfolio build with flutter 💙 that works for all screen sizes (almost) and is hosted on firebase 🔥",
      link: "https://github.com/shresthkapoor7/flutter-portfolio"),
  Project(
      date: "Aug 2021 - Oct 2021",
      name: "DigiTrack ",
      description:
          "A digital diary for your phone which stores your data locally to address privacy concerns. Created using Flutter",
      link: "https://github.com/shresthkapoor7/digitrack"),
  Project(
      date: "Jul 2022 - Present",
      name: "JPEG ",
      description:
          "A cross-platform instagram clone, build with a simple UI to connect with friends",
      link: "https://github.com/shresthkapoor7/jpeg"),
];
