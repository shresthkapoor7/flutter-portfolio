// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../models/project_model.dart';

class ProjectWidget extends StatelessWidget {
  Project projectData;
  ProjectWidget({Key? key, required this.projectData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        child: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.build,
                            color: kGrey,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            projectData.name,
                            style: kSectionTitleText,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        projectData.description,
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 10,
                // ),

                Column(
                  children: [
                    Divider(
                      height: 1,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.orange,
                          ),
                          child: TextButton(
                            child: Text(
                              'View Project',
                              style:
                                  kSubTitleText.copyWith(color: Colors.white),
                            ),
                            onPressed: () async {
                              //Launch project on GitHub
                              final Uri _url = Uri.parse(projectData.link);
                              await launchUrl(_url);
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Spacer(),
                // Divider(),
                // Align(
                //   alignment: Alignment.bottomRight,
                //   child: Padding(
                //     padding: const EdgeInsets.only(
                //         top: 5.0, left: 5, right: 10, bottom: 10),
                //     child: ElevatedButton(
                //       onPressed: () async {
                //         //Launch project on GitHub
                //         final Uri _url = Uri.parse(projectData.link);
                //         await launchUrl(_url);
                //       },
                //       child: Text(
                //         "View Project",
                //         style: kSubTitleText.copyWith(color: Colors.white),
                //       ),
                //     ),
                //   ),
                // ),
              ]),
        ),
      ),
    );
  }
}
