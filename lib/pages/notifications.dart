import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
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
          "Notifications",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text("Conversation tones"),
            subtitle: Text("Play sounds for incoming and outgoing messages"),
            trailing: Switch(value: true, onChanged: null),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "Messages",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
          ListTile(
            title: Text("Notification tone"),
            subtitle: Text("Default (On The Hunt)"),
          ),
          ListTile(
            title: Text("Vibrate"),
            subtitle: Text("Short"),
          ),
          ListTile(
            title: Text("Popup notifications"),
            subtitle: Text("No popup"),
          ),
          ListTile(
            title: Text("Light"),
            subtitle: Text("White"),
          ),
          ListTile(
            title: Text("Use high priority notification"),
            subtitle: Text("Show previews of notifications at the top of the "
                "screen"),
            trailing: Switch(value: true, onChanged: null),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "Groups",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
          ListTile(
            title: Text("Notification tone"),
            subtitle: Text("Default (On The Hunt)"),
          ),
          ListTile(
            title: Text("Vibrate"),
            subtitle: Text("Short"),
          ),
          ListTile(
            title: Text("Popup notifications"),
            subtitle: Text("No popup"),
          ),
          ListTile(
            title: Text("Light"),
            subtitle: Text("White"),
          ),
          ListTile(
            title: Text("Use high priority notification"),
            subtitle: Text("Show previews of notifications at the top of the "
                "screen"),
            trailing: Switch(value: true, onChanged: null),
          ),
          Divider(),
          ListTile(
            title: Text("Ringtone"),
            subtitle: Text("On the Hunt"),
          ),
          ListTile(
            title: Text("Vibrate"),
            subtitle: Text("Default"),
          )
        ],
      ),
    );
  }
}
