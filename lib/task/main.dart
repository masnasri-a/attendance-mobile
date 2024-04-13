import 'package:attendance/components/footer.dart';
import 'package:attendance/components/task/detail_task.dart';
import 'package:attendance/components/task/list_task.dart';
import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Task Page',
      home: _TaskPage(),
    );
  }
}

class _TaskPage extends StatefulWidget {
  const _TaskPage();

  @override
  State<_TaskPage> createState() => __TaskPageState();
}

class __TaskPageState extends State<_TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Task Page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: primaryColor,
      ),
      backgroundColor: defaultBgColor,
      body: Column(
        children: [
          const DetailTask(),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              child: const ListTask()),
        ],
      ),
      bottomNavigationBar: FooterMenu(
        selectedIndex: 1,
      ),
    );
  }
}
