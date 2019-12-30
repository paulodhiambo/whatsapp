import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text(
          "Chats",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text("Enter is send"),
                  subtitle: Text(
                    "Enter key will send your message",
                    style: TextStyle(),
                  ),
                  trailing: Switch(value: false, onChanged: null),
                ),
                ListTile(
                  title: Text("Media visibity"),
                  subtitle: Text(
                    "Show newly downloaded media in phone "
                    "gallery",
                    style: TextStyle(),
                  ),
                  trailing: Switch(value: true, onChanged: null),
                ),
                ListTile(
                  title: Text("Font Size"),
                  subtitle: Text(
                    "Medium",
                    style: TextStyle(),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.image,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text("Wallpaper"),
                ),
                ListTile(
                  leading: Icon(Icons.cloud_upload,
                      color: Theme.of(context).primaryColor),
                  title: Text("Chat backup"),
                ),
                ListTile(
                  leading: Icon(Icons.history,
                      color: Theme.of(context).primaryColor),
                  title: Text("Chat history"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
