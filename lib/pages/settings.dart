import 'package:flutter/material.dart';
import 'package:whatsapp/pages/account.dart';
import 'package:whatsapp/pages/datausage.dart';
import 'package:whatsapp/pages/help.dart';
import 'package:whatsapp/pages/notifications.dart';

import 'Chat.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: null),
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Image.asset(""),
            ),
            title: Text("Paul Odhiambo"),
            subtitle: Text("Good lord"),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Account(),
                ),
              );
            },
            leading: Icon(
              Icons.lock,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              "Account",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text("Privacy, security, change number"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Chats()));
            },
            leading: Icon(
              Icons.chat,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              "Chats",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text("Backup, history, wallpaper"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Notifications()));
            },
            leading: Icon(
              Icons.notifications,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              "Notifications",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text("Message, group & call tones"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Datausage()));
            },
            leading: Icon(
              Icons.data_usage,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              "Data and storage usage",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text("Network usage, auto-download"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Help()));
            },
            leading: Icon(
              Icons.help,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              "Help",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text("FAQ, contact us, privacy policy"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Divider(),
          ),
          ListTile(
            leading: Icon(
              Icons.group,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              "Invite a friend",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            child: Center(
              child: Text("WhatsApp from Facebook"),
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
