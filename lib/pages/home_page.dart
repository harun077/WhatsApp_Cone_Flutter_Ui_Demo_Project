import 'package:flutter/material.dart';

import 'call_page.dart';
import 'chat_page.dart';
import 'status_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Tab> topTaps = <Tab>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {
              print("Search Button Clicked");
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("Three dot Button Clicked");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: topTaps,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('Camera'),
          ChatPage(),
          StatusPage(),
          CallPage(),
        ],
      ),
      floatingActionButton: _getFAB(),
    );
  }

  _getFAB() {
    if (_tabController.index == 1) {
      return FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () => print('Open Chat'));
    } else if (_tabController.index == 2) {
      return FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          onPressed: () => print('Open Camera'));
    } else if (_tabController.index == 3) {
      return FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(
            Icons.call,
            color: Colors.white,
          ),
          onPressed: () => print('Open Call'));
    } else {
      return null;
    }
  }
}
