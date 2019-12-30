import 'package:flutter/material.dart';

class Newgroup extends StatelessWidget {
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
            "New group",
            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
          ),
          subtitle: Text(
            "Add participants",
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
      body: Container(
        child: ListView(
          children: <Widget>[
            ContactTile(),
            ContactTile(),
            ContactTile(),
            ContactTile(),
            ContactTile(),
            ContactTile(),
            ContactTile(),
            ContactTile(),
            ContactTile(),
            ContactTile(),
            ContactTile(),
            ContactTile(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: null,
        child: CircleAvatar(
          backgroundColor: Colors.green,
          radius: 20,
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ContactTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        child: Image.asset(""),
      ),
      title: Text("Paul "),
      subtitle: Text("Software developer"),
    );
  }
}
