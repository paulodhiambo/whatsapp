import 'package:flutter/material.dart';
import 'package:whatsapp/pages/newgroup.dart';

class NewBroadCast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: null),
        title: ListTile(
          title: Text(
            "New broadcast",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          subtitle: Text(
            "0 of 200 selected",
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              height: 70,
              child: Text(
                  "Only contacts with +2547000000000 in their address book will receive your broadcast messages."),
            ),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                ContactTile(),
                ContactTile(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.green,
        child: CircleAvatar(
          backgroundColor: Colors.green,
          radius: 20,
          child: Icon(
            Icons.done,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
