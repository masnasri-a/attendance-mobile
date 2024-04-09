import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

AppBar appBarMainPage() {
  return AppBar(
    leadingWidth: 200,
    leading: const Padding(
      padding: EdgeInsets.only(left: 20),
      child:Row(
        children: [
          GFAvatar(
            backgroundImage: NetworkImage("https://64.media.tumblr.com/fe97a360a6766ca7112f0b17d7304b4a/tumblr_nxxc53uJvV1u60tx6o1_1280.jpg"),
            size: 30,          
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Nasri Adzlani",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Software Engineer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            
            ],
          )
        ],
      ),
    ),
    backgroundColor: primaryColor,
    foregroundColor: Colors.white,
    toolbarHeight: 80,
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 20),
        child: Icon(
          Icons.notifications,
          size: 30,
        ),
      ),
    ],
  );
}
