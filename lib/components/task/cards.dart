import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      color: Colors.white,
      elevation: 4,
      semanticContainer: true,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Project",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: defaultFont,
                        fontSize: 12,
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.5),
                      child: const Text(
                        "FIF International FinanceFIF International FinanceFIF International FinanceFIF International Finance",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: defaultFont,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.circleCheck,
                      color: Colors.green,
                      size: 16,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Complete",
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: defaultFont,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
            const Column(
              children: [
                Text(
                  "[ ICS-321 ] Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ...",
                  style: TextStyle(
                    fontFamily: defaultFont,
                    fontSize: 12,
                    color: Colors.blueGrey,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "From",
                          style: TextStyle(
                            fontFamily: defaultFont,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "21-03-2024",
                          style: TextStyle(
                              fontFamily: defaultFont,
                              fontSize: 12,
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "To",
                          style: TextStyle(
                            fontFamily: defaultFont,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "21-03-2024",
                          style: TextStyle(
                              fontFamily: defaultFont,
                              fontSize: 12,
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Priority",
                          style: TextStyle(
                            fontFamily: defaultFont,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Highest",
                          style: TextStyle(
                              fontFamily: defaultFont,
                              fontSize: 12,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Assigneed to",
                          style: TextStyle(
                            fontFamily: defaultFont,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        GFAvatar(
                          backgroundImage: NetworkImage(
                              "https://p0.piqsels.com/preview/217/320/833/adult-caucasian-female-girl.jpg"),
                          shape: GFAvatarShape.circle,
                          size: 20,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Reporter",
                          style: TextStyle(
                            fontFamily: defaultFont,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        GFAvatar(
                          backgroundImage: NetworkImage(
                              "https://p0.piqsels.com/preview/217/320/833/adult-caucasian-female-girl.jpg"),
                          shape: GFAvatarShape.circle,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
