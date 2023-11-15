import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
          Container(height: 200, width: 75, color: Colors.red),
          Container(height: 200, width: 60, color: Colors.blue),
          Container(height: 200, width: 50, color: Colors.orange)
        ]),
      ),
    );
  }

}
