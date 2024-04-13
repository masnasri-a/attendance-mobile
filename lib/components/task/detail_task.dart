import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';

class DetailTask extends StatelessWidget {
  const DetailTask({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const Card(
        color: Colors.white,
        margin: EdgeInsets.all(20),
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Detail Task",
                  style: TextStyle(
                    fontFamily: defaultFont,
                    color: primaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "8",
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: defaultFont,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Backlog",
                        style: TextStyle(
                          color: secondaryColor,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "8",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontFamily: defaultFont,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Todo",
                        style: TextStyle(
                          color: secondaryColor,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "8",
                        style: TextStyle(
                            color: Colors.orange,
                            fontFamily: defaultFont,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "In Progress",
                        style: TextStyle(
                          color: secondaryColor,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "8",
                        style: TextStyle(
                            color: Colors.green,
                            fontFamily: defaultFont,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Complete",
                        style: TextStyle(
                          color: secondaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
