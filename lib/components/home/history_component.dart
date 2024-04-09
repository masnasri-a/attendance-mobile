import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HistoryComponent extends StatelessWidget {
  final dynamic types;
  final String title;
  final String desc;
  final String date;

  const HistoryComponent({
    required Key key,
    required this.types,
    required this.title,
    required this.desc,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const FaIcon(
                      FontAwesomeIcons.check,
                      size: 16,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        desc,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Text(
                date,
                style: const TextStyle(
                    fontFamily: defaultFont,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
