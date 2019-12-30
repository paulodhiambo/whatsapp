import 'package:flutter/material.dart';
import 'package:whatsapp/pages/calls.dart';
import 'package:whatsapp/pages/chats.dart';
import 'package:whatsapp/pages/newbroadcast.dart';
import 'package:whatsapp/pages/newgroup.dart';
import 'package:whatsapp/pages/search.dart';
import 'package:whatsapp/pages/settings.dart';
import 'package:whatsapp/pages/status.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,
      home: WhatsApp(),
    );
  }
}

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text("WhatsApp"),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Search()));
                }),
            PopupMenuButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Newgroup()));
                    },
                    child: Text("New group"),
                  ),
                ),
                PopupMenuItem(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewBroadCast()));
                    },
                    child: Text("New broadcast"),
                  ),
                ),
                PopupMenuItem(
                  child: GestureDetector(
                    onTap: null,
                    child: Text("WhatsApp Web"),
                  ),
                ),
                PopupMenuItem(
                  child: GestureDetector(
                    onTap: null,
                    child: Text("Starred messages"),
                  ),
                ),
                PopupMenuItem(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Settings()));
                    },
                    child: Text("Settings"),
                  ),
                ),
              ],
            ),
          ],
          bottom: TabBar(
            indicatorColor: Theme.of(context).primaryColor,
            tabs: [
              Tab(
                text: "Chat",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Chat(),
            Status(),
            Calls(),
          ],
        ),
      ),
    );
  }
}
