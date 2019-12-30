import 'package:flutter/material.dart';

class Datausage extends StatelessWidget {
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
        title: Text("Data usage"),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: Text(
              "Usage",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text(
              "Network usage",
            ),
            subtitle: Text("200MB sent 1GB recieved"),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text("Storage usage"),
            subtitle: Text("700MB"),
          ),
          Divider(),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Media auto-download",
              style: TextStyle(
                color: Colors.green[500],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child:
                Text("Voice messages are always auto-downloaded for the best "
                    "communication experince"),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text("When using mobile data"),
            subtitle: Text("Photos"),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text("When connected on Wi-Fi"),
            subtitle: Text("All media"),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text("When roaming"),
            subtitle: Text("No media"),
          ),
          Divider(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Call Settings",
              style: TextStyle(
                color: Colors.green[500],
              ),
            ),
          ),
          ListTile(
            title: Text("Low data usage"),
            subtitle: Text("Reduce the data usage in a call"),
            trailing: Switch(
              value: true,
              onChanged: null,
              activeColor: Theme.of(context).primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
