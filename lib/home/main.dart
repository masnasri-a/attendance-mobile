import 'package:attendance/components/footer_menu.dart';
import 'package:attendance/components/header_appbar.dart';
import 'package:attendance/components/home/attendance.dart';
import 'package:attendance/components/home/history_activity.dart';
import 'package:attendance/components/home/today_activity.dart';
import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Main Page',
      home: _MainPage(),
    );
  }
}

class _MainPage extends StatefulWidget {
  const _MainPage();

  @override
  State<_MainPage> createState() => __MainPageState();
}

class __MainPageState extends State<_MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMainPage(),
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
              height: MediaQuery.of(context).size.height * 0.15,
            ),
          ),
          Column(
            children: [
              const AttendanceWidget(),
              const TodayActivityWidget(),
              HistoryActivity(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: FooterMenu(),
    );
  }
}