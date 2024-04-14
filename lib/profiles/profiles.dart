import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ProfilesPage extends StatelessWidget {
  const ProfilesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GFAvatar(
            backgroundImage: NetworkImage(
                "https://img.freepik.com/free-photo/beauty-lifestyle-concept-headshot-pretty-asian-woman-dreamy-gazing-left-copy-space-smiling-happy-standing-pink-background_1258-75792.jpg"),
            shape: GFAvatarShape.circle,
            size: 40,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Nasri Adzlani",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: defaultFont,
                color: Colors.white,
              )),
          Text(
            "Software Engineer",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              fontFamily: defaultFont,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
