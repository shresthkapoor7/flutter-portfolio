import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';

//Update with colors of your choice for dp background gradient
Color kGradient1 = Colors.black;
Color kGradient2 = Colors.orange;

String imagePath = "images/shresth.jpeg";

//String data to modify
String name = "Shresth Kapoor ⚡";
String username = "flutterroles";

//Link to resume on Google Drive
String resumeLink =
    "https://drive.google.com/file/d/156flZhtg1pLE2_Yeb1yQdjqqYhsX3J5t/view?usp=sharing";

//Contact Email
String contactEmail = "mail@shresthkapoor7@gmail.com";

String aboutWorkExperience = '''
I am an app developer with industry experience building android applications. I specialize in C++ and have professional experience working with Flutter. I also have experience working with C and Python. Currently pursuing my BTech in Computer Science Engineering at SRM ist.
''';

String aboutMeSummary = '''
I am an app developer with industry experience building android applications. I specialize in C++ and have professional experience working with Flutter. I also have experience working with C and Python. Currently pursuing my BTech in Computer Science Engineering at SRM ist.

''';

String location = "Agra, India";
String website = "shresthkapoor.in";
String portfolio = "shresthkapoor";
String email = "shresthkapoor7";

List<Project> projectList = [
  Project(
      name: "Shades",
      description:
          "Winner IEEE Mandi 'Go Online' Challenge at Electrothon, NIT Hamirpur.",
      link: "https://github.com/adityathakurxd/shades"),
  Project(
      name: "Fiasco",
      description:
          "Fiasco is one stop solution to help you manage Family expenses in one place!",
      link: "https://github.com/adityathakurxd/fiasco"),
  Project(
      name: "Fiasco",
      description:
          "Fiasco is one stop solution to help you manage Family expenses in one place!",
      link: "https://github.com/adityathakurxd/fiasco"),
  Project(
      name: "Flutter Portfolio",
      description: "A template for Portfolio",
      link: "https://github.com/adityathakurxd/flutter-portfolio")
];
