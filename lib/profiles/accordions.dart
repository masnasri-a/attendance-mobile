import 'package:accordion/accordion.dart';
import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';

class AccordionProfile extends StatelessWidget {
  const AccordionProfile({super.key});

  @override
  Widget build(BuildContext context) {
    const metadata = [
      {
        "icon": FontAwesomeIcons.user,
        "title": "Personal Information",
        "content": [
          {
            "icon": FontAwesomeIcons.user,
            "title": "Name",
            "subtitle": "Nasri Adzlani"
          },
          {
            "icon": FontAwesomeIcons.envelope,
            "title": "Email",
            "subtitle": "asdasd"
          }
        ]
      },
      {
        "icon": FontAwesomeIcons.briefcase,
        "title": "Work Information",
        "content": [
          {
            "icon": FontAwesomeIcons.building,
            "title": "Company",
            "subtitle": "PT. ABC"
          },
          {
            "icon": FontAwesomeIcons.userTie,
            "title": "Position",
            "subtitle": "Software Engineer"
          }
        ]
      }
    ];
    return SizedBox(
        child: Card(
            color: Colors.white,
            elevation: 2,
            margin: const EdgeInsets.all(20),
            child: Accordion(
              children: metadata.map((e) {
                return AccordionSection(
                  headerPadding: const EdgeInsets.all(10),
                  headerBackgroundColor: primaryColor,
                  header: Row(
                    children: [
                      Icon(
                        e["icon"]! as IconData,
                        size: 16,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(e["title"]! as String,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: defaultFont,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  contentBorderColor: Colors.white,
                  contentBorderRadius: 20,
                  contentBackgroundColor: const Color.fromARGB(20, 0, 0, 0),
                  content: Column(
                    children: (e["content"] as List<dynamic>).map<Widget>((e) {
                      return ListTile(
                        leading: Icon(
                          e["icon"]! as IconData,
                          size: 16,
                          color: primaryColor,
                        ),
                        title: Text(e["title"]! as String,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: defaultFont,
                              color: primaryColor,
                            )),
                        subtitle: Text(e["subtitle"]! as String,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              fontFamily: defaultFont,
                              color: Colors.black54,
                            )),
                      );
                    }).toList(),
                  ),
                );
              }).toList(),
            )));
  }
}
