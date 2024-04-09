import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_button_flutter/swipebutton.dart';

class AttendanceWidget extends StatelessWidget {
  const AttendanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: Card(
        color: Colors.white,
        shadowColor: primaryColor,
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_today, size: 16, color: primaryColor),
                      SizedBox(width: 5),
                      Text(
                        "24 Mar 2024",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(Icons.access_time, size: 16, color: primaryColor),
                      SizedBox(width: 5),
                      Text(
                        "08:00 PM",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Center(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Card(
                          color: Color(0xFFE5E5E5),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "00",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: defaultFont,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Card(
                          color: Color(0xFFE5E5E5),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "00",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: defaultFont,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Card(
                          color: Color(0xFFE5E5E5),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "00",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: defaultFont,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  "General 09:00 AM to 06:00 PM",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: defaultFont,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: SwipeButton(
                  onSwipeCallback: () {
                    print('swipe');
                  },
                  text: "Clock In",
                  height: 40,
                  buttonTextStyle: const TextStyle(
                    color: Colors.white,
                    fontFamily: defaultFont,
                    fontSize: 14,
                  ),
                  swipeButtonColor: primaryColor,
                  swipePercentageNeeded: 0.2,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
