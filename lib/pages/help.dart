import 'package:flutter/material.dart';
import 'package:whatsapp/pages/appinfo.dart';

class Help extends StatelessWidget {
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
          "Help",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15),
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.help,
                color: Theme.of(context).primaryColor,
              ),
              title: Text("FAQ"),
            ),
            ListTile(
              leading: Icon(
                Icons.group,
                color: Theme.of(context).primaryColor,
              ),
              title: Text("Contact us"),
              subtitle: Text("Questions? Need help?"),
            ),
            ListTile(
              leading: Icon(
                Icons.insert_drive_file,
                color: Theme.of(context).primaryColor,
              ),
              title: Text("Terms and privacy policy"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Appinfo()));
              },
              leading: Icon(
                Icons.info_outline,
                color: Theme.of(context).primaryColor,
              ),
              title: Text("App info"),
            ),
          ],
        ),
      ),
    );
  }
}
