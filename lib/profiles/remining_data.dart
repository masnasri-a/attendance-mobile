import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';

class ReminingData extends StatelessWidget {
  const ReminingData({super.key});

  @override
  Widget build(BuildContext context) {
    const data = [
      {"title": "Remaining Leaves", "value": "8"},
      {"title": "Attendance Balances", "value": "13"},
      {"title": "Monthly Task Complete", "value": "28"},
      {"title": "Hour Overtime", "value": "6"},
    ];
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: data.map((e) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width * 0.19,
                    child: Column(
                      children: [
                        Text(
                          e["value"]!,
                          style: const TextStyle(
                            fontSize: 24,
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          e["title"]!,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          softWrap: true,
                          textWidthBasis: TextWidthBasis.parent,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
