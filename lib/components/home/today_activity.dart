import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TodayActivityWidget extends StatelessWidget {
  const TodayActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: const Card(
          color: Colors.white,
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today Activity",
                  style: TextStyle(
                      fontFamily: defaultFont, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidClock,
                          size: 20,
                          color: primaryDisableColor,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "--:--",
                          style: TextStyle(
                            fontFamily: defaultFont,
                            color: secondaryColor,
                          ),
                        )
                      ],
                    ),Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidBookmark,
                          size: 20,
                          color: primaryDisableColor,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "12 Task",
                          style: TextStyle(
                            fontFamily: defaultFont,
                            color: secondaryColor,
                          ),
                        ),
                        Text(
                          "Pending",
                          style: TextStyle(
                            fontFamily: defaultFont,
                            color: secondaryColor,
                          ),
                        ),
                      ],
                    ),Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidCircleXmark,
                          size: 20,
                          color: primaryDisableColor,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "--:--",
                          style: TextStyle(
                            fontFamily: defaultFont,
                            color: secondaryColor,
                          ),
                        )
                      ],
                    ),Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.trello,
                          size: 20,
                          color: primaryDisableColor,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "53 Task",
                          style: TextStyle(
                            fontFamily: defaultFont,
                            color: secondaryColor,
                          ),
                        ),
                        Text(
                          "Complete",
                          style: TextStyle(
                            fontFamily: defaultFont,
                            color: secondaryColor,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
