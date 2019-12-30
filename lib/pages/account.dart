import 'package:flutter/material.dart';

class Account extends StatelessWidget {
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
        title: Text(
          "Account",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.lock,
              color: Theme.of(context).primaryColor,
            ),
            title: Text("Privacy"),
          ),
          ListTile(
            leading: Icon(
              Icons.security,
              color: Theme.of(context).primaryColor,
            ),
            title: Text("Security"),
          ),
          ListTile(
            leading: Icon(
              Icons.more,
              color: Theme.of(context).primaryColor,
            ),
            title: Text("Two-step verification"),
          ),
          ListTile(
            leading: Icon(
              Icons.input,
              color: Theme.of(context).primaryColor,
            ),
            title: Text("Change number"),
          ),
          ListTile(
            leading: Icon(
              Icons.insert_drive_file,
              color: Theme.of(context).primaryColor,
            ),
            title: Text("Request account info"),
          ),
          ListTile(
            leading: Icon(
              Icons.delete,
              color: Theme.of(context).primaryColor,
            ),
            title: Text("Delete my account"),
          ),
        ],
      ),
    );
  }
}
