import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: null),
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search...",
            border: InputBorder.none,
          ),
          cursorColor: Theme.of(context).primaryColor,
        ),
      ),
      body: ListView(
        children: <Widget>[
          ChatTil(),
          ChatTil(),
          ChatTil(),
          ChatTil(),
          ChatTil(),
          ChatTil(),
          ChatTil(),
          ChatTil(),
          ChatTil(),
          ChatTil(),
          ChatTil(),
        ],
      ),
    );
  }
}

class Chatsearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ChatTil(),
        ChatTil(),
        ChatTil(),
        ChatTil(),
        ChatTil(),
        ChatTil(),
        ChatTil(),
        ChatTil(),
        ChatTil(),
      ],
    );
  }
}

class ChatTil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
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
