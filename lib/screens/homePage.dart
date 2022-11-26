// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/projectPage.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String image1 =
      'https://lh3.googleusercontent.com/AUc8ae14K44qkCTWKOCz6dvgIEeih8h2t3v2Y8c6RVKxwyHuJjbY3FiY00De8vyyVyheqY42nk02Nw6ljfqcxCdm0_tQYb3NCkOvwQ=w1064-v0';
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: SpeedDial(
        overlayColor: Colors.black,
        backgroundColor: Colors.white,
        //animatedIcon: AnimatedIcons.menu_arrow,
        activeIcon: Icons.arrow_back,
        icon: Icons.share,
        iconTheme: IconThemeData(color: Colors.black),
        activeBackgroundColor: Colors.white,
        spacing: 10,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SpeedDialChild(
            label: 'Resume',
            child: Icon(Icons.description),
            onTap: () async {
              final Uri _url = Uri.parse(resumeLink);
              await launchUrl(_url);
            },
          ),
          SpeedDialChild(
            label: 'Copy link',
            child: Icon(Icons.copy),
            onTap: () {
              Clipboard.setData(ClipboardData(
                  text: "https://shresthkapoor7-5b90e.web.app/#/"));
            },
          ),
          SpeedDialChild(
            label: 'Copy Email',
            child: Icon(Icons.email),
            onTap: () {
              Clipboard.setData(
                  ClipboardData(text: "shresthkapoor7@gmail.com"));
            },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 30.0, right: 120, top: 80, bottom: 80),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: 550,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                name,
                                style: kTitleText.copyWith(
                                    fontSize: 24,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10, top: 10, bottom: 10),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/shresthh.jpeg'),
                                  radius: 130,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 85,
                                    child: Divider(
                                      thickness: 2.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Container(
                                    width: 120,
                                    child: Divider(
                                      thickness: 2.0,
                                      color: Colors.blue.shade800,
                                    ),
                                  ),
                                  Container(
                                    width: 40,
                                    child: Divider(
                                      thickness: 2.0,
                                      color: Colors.blue.shade800,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Student | Flutter Developer',
                                style: kTitleText.copyWith(
                                    fontSize: 13,
                                    letterSpacing: 1,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          Container(
                            width: 250,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Final year Computer Science Student at SRM institute of Science and Technology. An app developer with experience in creating cross platform apps.',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () async {
                                    final Uri _url = Uri.parse(
                                        'https://github.com/ShresthKapoor7');
                                    await launchUrl(_url);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    padding: EdgeInsets.all(5),
                                    child: Icon(
                                      FontAwesomeIcons.github,
                                      color: Colors.white,
                                    ),
                                  )),
                              TextButton(
                                  onPressed: () async {
                                    final Uri _url = Uri.parse(
                                        'https://www.linkedin.com/in/shresth-kapoor-7skp/');
                                    await launchUrl(_url);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    padding: EdgeInsets.all(5),
                                    child: Icon(
                                      FontAwesomeIcons.linkedin,
                                      color: Colors.white,
                                    ),
                                  )),
                              TextButton(
                                  onPressed: () async {
                                    final Uri _url = Uri.parse(
                                        'https://twitter.com/ShresthKapoor7');
                                    await launchUrl(_url);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    padding: EdgeInsets.all(5),
                                    child: Icon(
                                      FontAwesomeIcons.twitter,
                                      color: Colors.white,
                                    ),
                                  )),
                              TextButton(
                                  onPressed: () async {
                                    final Uri _url = Uri.parse(
                                        'https://shresthkapoor7.hashnode.dev/');
                                    await launchUrl(_url);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    padding: EdgeInsets.all(5),
                                    child: Icon(
                                      FontAwesomeIcons.hashnode,
                                      color: Colors.white,
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            MyWidget(),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final upperTab = const TabBar(indicatorColor: Colors.white, tabs: <Tab>[
    Tab(text: 'Projects'),
    Tab(text: 'Experience'),
    Tab(text: 'Eductaion'),
    Tab(
      text: 'Achievements',
    ),
    Tab(text: 'Blogs',),
  ]);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0.0, top: 20),
      child: Container(
          height: 800,
          width: 820,
          child: DefaultTabController(
            length: 5,
            child: Scaffold(
              appBar: upperTab,
              backgroundColor: Colors.black,
              body: TabBarView(
                children: [
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 45, top: 20),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    final Uri _url = Uri.parse(
                                        'https://github.com/shresthkapoor7/flutter-portfolio');
                                    await launchUrl(_url);
                                  },
                                  child: StackBoxes(
                                    image1:
                                        'https://litslink.com/wp-content/uploads/2020/03/flutter-app-featured.png',
                                    col: Colors.blue,
                                    desc: 'Portfolio',
                                    desc2: 'You are here',
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    final Uri _url = Uri.parse(
                                        'https://github.com/shresthkapoor7/FlashChat-App');
                                    await launchUrl(_url);
                                  },
                                  child: StackBoxes(
                                    col: Colors.red,
                                    image1:
                                        'https://www.cmarix.com/blog/wp-content/uploads/2021/01/Top-13-Flutter-App-Development-Tools-For-Developers-In-2021.jpg',
                                    desc: 'Flash Chat',
                                    desc2: 'Login and chat',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    final Uri _url = Uri.parse(
                                        'https://github.com/shresthkapoor7/grocer');
                                    await launchUrl(_url);
                                  },
                                  child: StackBoxes(
                                    col: Colors.white,
                                    image1:
                                        'https://images.unsplash.com/photo-1542838132-92c53300491e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z3JvY2VyeXxlbnwwfHwwfHw%3D&w=1000&q=80',
                                    desc: 'Flash Chat',
                                    desc2: 'Login and chat',
                                  ),
                                ),
                                // StackBoxes(
                                //   col: Colors.white,
                                //   image1:
                                //       'https://www.primarygames.com/arcade/classic/pongclassic/logo200.png',
                                //   desc: 'Project',
                                //   desc2: 'Description',
                                // ),
                                // SizedBox(
                                //   width: 25,
                                // ),
                                // StackBoxes(
                                //   col: Colors.purple.shade900,
                                //   image1:
                                //       'https://miro.medium.com/max/1400/1*3ltsv1uzGR6UBjZ6CUs04A.jpeg',
                                //   desc: 'Project',
                                //   desc2: 'Description',
                                // ),
                              ],
                            ),
                            SizedBox(
                              height: 35,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        ExperienceWidget(
                          image:
                              'https://media-exp1.licdn.com/dms/image/C510BAQHXw1cLSJp3fw/company-logo_200_200/0/1529886655194?e=1674691200&v=beta&t=3fTXHZjUhdADR-oyjFZbykn1YDdR23wefGE0xprhU18',
                          role: 'App Developer',
                          company: 'Decoders | Virtual Internship',
                          desc:
                              "Responsible for building frontend using flutter and libraries along with integrating SDKs and APIs to make apps dynamic for both iOS and Android. Implemented session management, deep linking, and user-friendly interface. Migrated application from flutter 2.0 to flutter 3.0. ",
                          time: 'Feb 2022 - Apr 2022 · 3 mos',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ExperienceWidget(
                          image:
                              'https://media-exp1.licdn.com/dms/image/C4E0BAQHLt_Q1Q70bmQ/company-logo_200_200/0/1620813848046?e=1676505600&v=beta&t=e-MSxENE_N6qHgBz7BUawBydmxnGr9qxwyV0tmjayGY',
                          role: 'Flutter App Developer',
                          company: 'Experitos Studios | Virtual Internship',
                          desc:
                              "Built frontend using flutter, added navigation and animations.",
                          time: 'Jul 2021 · 1 mos',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ExperienceWidget(
                          image:
                              'https://media-exp1.licdn.com/dms/image/C510BAQGo28atv4HagQ/company-logo_200_200/0/1523335315765?e=1676505600&v=beta&t=w6sGYLP0Kh4i36hUjbY18i7vu7ulMbPUZG4Xf0Nemio',
                          role: 'Android App Developer',
                          company: 'Aakash Research Labs | Club',
                          desc: "",
                          time: 'Nov 2021 - March 2022· 5 mos',
                        ),
                        ExperienceWidget(
                          image:
                              'https://media-exp1.licdn.com/dms/image/C510BAQEj-uKiVvgAew/company-logo_200_200/0/1587506331537?e=1676505600&v=beta&t=qyw-6TMBRCAmw7hMKzMi-QoqsSCZ6J8LcVT_voRFEeY',
                          role: 'Design Team',
                          company: 'Data Science Community | Club',
                          desc: "",
                          time: 'Jul 2020 - Aug 2020· 2 mos',
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        ExperienceWidget(
                          image:
                              'https://media-exp1.licdn.com/dms/image/C510BAQHO4Qj_rvGxUA/company-logo_200_200/0/1565025702584?e=1676505600&v=beta&t=yYByR_578Wbxv1Ttx3vuATGce7wbu-JHWVuGteuErA8',
                          role: 'SRM institute of Science and Technology',
                          company:
                              "Bachelor's Degree | Computer Science and Engineering",
                          desc: "",
                          time: 'Jun 2019 - May 2023 · CGPA : 9.2 ',
                        ),
                        ExperienceWidget(
                          image:
                              'https://media-exp1.licdn.com/dms/image/C560BAQHZlQlKwlJv6w/company-logo_200_200/0/1590404067833?e=2147483647&v=beta&t=Odwuw35nh6L49MadzqDkAFI_MfmjTj5QUnFEQ4LJNbc',
                          role: 'Delhi Public School Greater Faridabad',
                          company: "CBSE 12th | PCM",
                          desc: "",
                          time: '2019 · Percentage : 85.8',
                        ),
                        ExperienceWidget(
                          image:
                              'https://media-exp1.licdn.com/dms/image/C560BAQHZlQlKwlJv6w/company-logo_200_200/0/1590404067833?e=2147483647&v=beta&t=Odwuw35nh6L49MadzqDkAFI_MfmjTj5QUnFEQ4LJNbc',
                          role: 'Delhi Public School Greater Faridabad',
                          company: "CBSE 10th",
                          desc: "",
                          time: '2019 · CGPA : 8.6',
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        ExperienceWidget(
                          image:
                              'https://media-exp1.licdn.com/dms/image/C510BAQHO4Qj_rvGxUA/company-logo_200_200/0/1565025702584?e=1676505600&v=beta&t=yYByR_578Wbxv1Ttx3vuATGce7wbu-JHWVuGteuErA8',
                          role: '3rd Position in WAVE 2022',
                          company:
                              "Issued by SRM institute of Science and Technology",
                          desc: "World of Augmented and Virtual Reality Expo",
                          time: 'May 2022',
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ExperienceWidget(
                          image:
                              'https://media-exp1.licdn.com/dms/image/C510BAQHO4Qj_rvGxUA/company-logo_200_200/0/1565025702584?e=1676505600&v=beta&t=yYByR_578Wbxv1Ttx3vuATGce7wbu-JHWVuGteuErA8',
                          role: 'Special Award in SRM Hackathon 5.0',
                          company:
                              "Issued by SRM institute of Science and Technology",
                          desc: "",
                          time: 'May 2021',
                        ),
                        ExperienceWidget(
                          image:
                              'https://pbs.twimg.com/profile_images/1415325668787855361/nxZY4zVv_400x400.png',
                          role: 'Flutter Bootcamp',
                          company: "Udemy",
                          desc: "",
                          time: 'Dec 2021',
                        ),
                        ExperienceWidget(
                          image:
                              'https://upload.wikimedia.org/wikipedia/commons/4/40/HackerRank_Icon-1000px.png',
                          role: 'SQL',
                          company: "HackerRank",
                          desc: "",
                          time: 'May 2022',
                        ),
                        ExperienceWidget(
                          image:
                              'https://upload.wikimedia.org/wikipedia/commons/4/40/HackerRank_Icon-1000px.png',
                          role: 'Python',
                          company: "HackerRank",
                          desc: "",
                          time: 'Aug 2021',
                        ),
                      ],
                    ),
                  ),
                  Text('Hey')
                ],
              ),
            ),
          )),
    );
  }
}

class StackBoxes extends StatelessWidget {
  const StackBoxes(
      {Key? key,
      required this.image1,
      required this.desc,
      required this.desc2,
      required this.col})
      : super(key: key);

  final String image1;
  final Color col;
  final String desc;
  final String desc2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        HoverImage(
          image: image1,
          col: col,
        ),
        ClipRRect(
          // Clip it cleanly.
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
            child: Container(
              color: col.withOpacity(0.1),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    desc,
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    desc2,
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HoverImage extends StatefulWidget {
  final String image;
  final Color col;

  const HoverImage({required this.image, required this.col});

  @override
  _HoverImageState createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  late Animation padding;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );
    _animation = Tween(begin: 1.0, end: 1.01).animate(CurvedAnimation(
        parent: _controller, curve: Curves.ease, reverseCurve: Curves.easeIn));
    padding = Tween(begin: 0.0, end: -1.0).animate(CurvedAnimation(
        parent: _controller, curve: Curves.ease, reverseCurve: Curves.easeIn));
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          _controller.forward();
        });
      },
      onExit: (value) {
        setState(() {
          _controller.reverse();
        });
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0.0, 20.0),
              spreadRadius: -10.0,
              blurRadius: 20.0,
            )
          ],
        ),
        child: Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(10)), //TODO
            height: 350,
            width: 350,
            clipBehavior: Clip.hardEdge,
            transform: Matrix4(_animation.value, 0, 0, 0, 0, _animation.value,
                0, 0, 0, 0, 1.2, 0, padding.value, padding.value, 0, 1),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(widget.col, BlendMode.hue),
              child: Image.network(
                widget.image,
                fit: BoxFit.cover,
              ),
            )),
      ),
    );
  }
}

// color: Colors.black,
//           image: DecorationImage(
//             fit: BoxFit.cover,
//             colorFilter: ColorFilter.mode(myColor, BlendMode.dstATop),
//             image: NetworkImage(
//               image,

class ExperienceWidget extends StatelessWidget {
  String role;
  String company;
  String time;
  String desc;
  String image;
  ExperienceWidget(
      {required this.role,
      required this.company,
      required this.desc,
      required this.time,
      required this.image});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 70,
          child: Image(image: NetworkImage(image)),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              role,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              company,
              style: TextStyle(color: Colors.white, fontSize: 19),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              time,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 700,
              child: Text(
                desc,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
