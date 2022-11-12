// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/widgets/project_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter/services.dart';

import 'homePage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: SpeedDial(
        overlayColor: Colors.black,
        backgroundColor: Colors.orange,
        //animatedIcon: AnimatedIcons.menu_arrow,
        activeIcon: Icons.arrow_back,
        icon: Icons.share,
        spacing: 10,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SpeedDialChild(
            child: Icon(Icons.copy),
            onTap: () {
              Clipboard.setData(ClipboardData(
                  text: "https://shresthkapoor7-5b90e.web.app/#/"));
            },
          ),
        ],
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      backgroundColor: Colors.blueGrey.shade900,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              // ignore: sort_child_properties_last
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()),
                                );
                              },
                              child: Text(
                                'Home',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Experience',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              },
                              child: Text(
                                'Projects',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              },
                              child: Text(
                                'Achievements',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CircleAvatar(
                      radius: 82,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: NetworkImage(
                            'https://pbs.twimg.com/profile_images/1482620341512192002/02fkFpxQ_400x400.jpg'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                      name,
                      style: kTitleText,
                    )),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            //Code to launch resume
                            final Uri _url =
                                Uri.parse('https://twitter.com/ShresthKapoor7');
                            await launchUrl(_url);
                          },
                          child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Icon(
                                FontAwesomeIcons.twitter, //TODO:
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(width: 20),
                        GestureDetector(
                          onTap: () async {
                            //Code to launch resume
                            final Uri _url = Uri.parse(
                                'https://www.linkedin.com/in/shresth-kapoor-7skp/');
                            await launchUrl(_url);
                          },
                          child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Icon(
                                FontAwesomeIcons.linkedin, //TODO:
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(width: 20),
                        GestureDetector(
                          onTap: () async {
                            //Code to launch resume
                            final Uri _url =
                                Uri.parse('https://github.com/shresthkapoor7');
                            await launchUrl(_url);
                          },
                          child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Icon(
                                FontAwesomeIcons.github, //TODO:
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: () async {
                      //Code to launch resume
                      final Uri _url = Uri.parse(resumeLink);
                      await launchUrl(_url);
                    },
                    child: Text(
                      "View Resume",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    )),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () async {
                      //Call to launch email
                      final Uri emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: contactEmail,
                      );
                      await launchUrl(emailLaunchUri);
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add,
                          size: 16,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Contact",
                          style: kSubTitleText.copyWith(color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30, top: 20),
              child: Center(
                child: SizedBox(
                  width: double.infinity,
                  child: screenSize.width > 1200
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Experience",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    aboutWorkExperience,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  const Divider(),
                                  Text(
                                    "About Me",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    aboutMeSummary,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Column(
                                children: [
                                  Card(
                                    color: Colors.orange,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 40),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Location",
                                              style: kSubTitleText,
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  location,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                GestureDetector(
                                                  onTap: () async {
                                                    //Code to launch resume
                                                    final Uri _url = Uri.parse(
                                                        'https://www.google.com/maps/place/Agra,+Uttar+Pradesh/@27.1761049,77.8399274,11z/data=!3m1!4b1!4m5!3m4!1s0x39740d857c2f41d9:0x784aef38a9523b42!8m2!3d27.1766701!4d78.0080745');
                                                    await launchUrl(_url);
                                                  },
                                                  child: MouseRegion(
                                                    cursor: SystemMouseCursors
                                                        .click,
                                                    child: const Icon(
                                                      FontAwesomeIcons.mapPin,
                                                      size: 16,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Website",
                                              style: kSubTitleText,
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Text(portfolio),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                GestureDetector(
                                                  onTap: () async {
                                                    final Uri _url = Uri.parse(
                                                        'https://linktr.ee/shresthkapoor');
                                                    await launchUrl(_url);
                                                  },
                                                  child: MouseRegion(
                                                    cursor: SystemMouseCursors
                                                        .click,
                                                    child: const Icon(
                                                      FontAwesomeIcons.tree,
                                                      size: 16,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Email",
                                              style: kSubTitleText,
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Text(email),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                const Icon(
                                                  Icons.mail,
                                                  size: 16,
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                          ]),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  color: Colors.black,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 40),
                                    child: Column(children: [
                                      Text(
                                        "Experience",
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24.0,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        aboutWorkExperience,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      const Divider(),
                                      Text(
                                        "About Me",
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24.0,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        aboutMeSummary,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ]),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Card(
                                  color: Colors.orange,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 40),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Location",
                                            style: kSubTitleText,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                location,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              GestureDetector(
                                                onTap: () async {
                                                  //Code to launch resume
                                                  final Uri _url = Uri.parse(
                                                      'https://www.google.com/maps/place/Agra,+Uttar+Pradesh/@27.1761049,77.8399274,11z/data=!3m1!4b1!4m5!3m4!1s0x39740d857c2f41d9:0x784aef38a9523b42!8m2!3d27.1766701!4d78.0080745');
                                                  await launchUrl(_url);
                                                },
                                                child: MouseRegion(
                                                  cursor:
                                                      SystemMouseCursors.click,
                                                  child: const Icon(
                                                    FontAwesomeIcons.mapPin,
                                                    size: 16,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Website",
                                            style: kSubTitleText,
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Text(portfolio),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              GestureDetector(
                                                onTap: () async {
                                                  final Uri _url = Uri.parse(
                                                      'https://linktr.ee/shresthkapoor');
                                                  await launchUrl(_url);
                                                },
                                                child: MouseRegion(
                                                  cursor:
                                                      SystemMouseCursors.click,
                                                  child: const Icon(
                                                    FontAwesomeIcons.tree,
                                                    size: 16,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Email",
                                            style: kSubTitleText,
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Text(email),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Icon(
                                                Icons.mail,
                                                size: 16,
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                        ]),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30, top: 20),
              child: Container(
                color: Colors.black,
                child: Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    child: screenSize.width > 1000
                        ? GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2, childAspectRatio: 3),
                            itemCount: projectList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ProjectWidget(
                                projectData: projectList[index],
                              );
                            })
                        : GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1, childAspectRatio: 3),
                            itemCount: projectList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ProjectWidget(
                                projectData: projectList[index],
                              );
                            }),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'It works on my machine',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w200,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
