import 'package:attendance/components/home/history_component.dart';
import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';

class HistoryActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "History Activity",
                    style: TextStyle(
                        fontFamily: defaultFont, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See All",
                      style: TextStyle(
                          fontFamily: defaultFont,
                          color: primaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    for (int i = 0; i < 5; i++) ...{
                      HistoryComponent(
                        key: Key(i.toString()),
                        types: i,
                        title: "test",
                        desc: "[ ICS-321 ] Add Button On Hea...",
                        date: "10:15 PM",
                      )
                    }
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
