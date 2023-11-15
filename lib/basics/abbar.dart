import 'package:flutter/material.dart';

class Tabmix extends StatefulWidget {
  const Tabmix({super.key});

  @override
  State<Tabmix> createState() => _TabmixState();
}

class _TabmixState extends State<Tabmix> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this,initialIndex: 1);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          bottom: TabBar(controller: _tabController, tabs: [
        Tab(
          child: Icon(Icons.masks),
        ),
        Tab(
          child: Icon(Icons.access_time),
        ),
      ])),
      body: TabBarView(controller: _tabController,
        children: [Text("HI"), Text("HELLO")],
      ),
    );
  }
}
