import 'package:flutter/material.dart';
import 'package:whatsapp/pages/chatscreen.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ChatTile(),
          ChatTile(),
          ChatTile(),
          ChatTile(),
          ChatTile(),
          ChatTile(),
          ChatTile(),
          ChatTile(),
          ChatTile(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[500],
        onPressed: null,
        child: IconButton(
            icon: Icon(
              Icons.message,
              color: Colors.white,
            ),
            onPressed: null),
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Chatscreen()));
          },
          leading: CircleAvatar(
            radius: 27,
            child: Image.asset(""),
          ),
          title: Text("0792599238"),
          subtitle: Row(
            children: <Widget>[
              Icon(
                Icons.done_all,
                color: Colors.lightBlue,
              ),
              Text("How are you..."),
            ],
          ),
          trailing: Column(
            children: <Widget>[
              Text(
                "Yesterday",
                style: TextStyle(fontSize: 10.0),
              ),
              SizedBox(
                height: 9,
              ),
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.green[500],
                child: Text(
                  "2",
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30, top: 0),
          child: Divider(),
        ),
      ],
    );
  }
}
