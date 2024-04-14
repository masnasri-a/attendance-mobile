import 'package:attendance/profiles/accordions.dart';
import 'package:attendance/profiles/profiles.dart';
import 'package:attendance/profiles/remining_data.dart';
import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text(
            'Profile',
          ),
          backgroundColor: primaryColor,
        ),
        backgroundColor: defaultBgColor,
        body: Stack(
          fit: StackFit.loose,
          children: [
            Positioned(
              child: Container(
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.20,
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [ProfilesPage(), ReminingData(), AccordionProfile()],
            ),
          ],
        ));
  }
}
