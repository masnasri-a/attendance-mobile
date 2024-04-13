import 'package:attendance/components/task/cards.dart';
import 'package:attendance/theme.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class ListTask extends StatelessWidget {
  const ListTask({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Column(
          children: [
            ButtonsTabBar(
              tabs: const [
                Tab(text: " All "),
                Tab(text: " Backlog "),
                Tab(text: " Todo "),
                Tab(text: " In Progress"),
                Tab(text: " Complete "),
              ],
              backgroundColor: primaryColor,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      for (int i = 0; i < 5; i++) ...{const Cards()}
                    ],
                  ),
                  const Center(
                    child: Text("Backlog"),
                  ),
                  const Center(
                    child: Text("Todo"),
                  ),
                  const Center(
                    child: Text("In Progress"),
                  ),
                  const Center(
                    child: Text("Done"),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
