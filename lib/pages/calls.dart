import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Calling(Colors.green[500], 360, Icons.call),
          Calling(Colors.red[700], 320, Icons.videocam),
          Calling(Colors.green[500], 360, Icons.call),
          Calling(Colors.red[700], 320, Icons.videocam),
          Calling(Colors.green[500], 360, Icons.call),
          Calling(Colors.red[700], 320, Icons.videocam),
          Calling(Colors.green[500], 360, Icons.call),
          Calling(Colors.red[700], 320, Icons.videocam),
          Calling(Colors.green[500], 360, Icons.call),
          Calling(Colors.red[700], 320, Icons.videocam),
          Calling(Colors.green[500], 360, Icons.call),
          Calling(Colors.red[700], 320, Icons.videocam),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[500],
        onPressed: null,
        child: IconButton(
            icon: Icon(
              Icons.add_call,
              color: Colors.white,
            ),
            onPressed: null),
      ),
    );
  }
}

class Calling extends StatelessWidget {
  final Color type;
  final double angle;
  final IconData icontype;

  Calling(this.type, this.angle, this.icontype);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            child: Image.asset(""),
          ),
          title: Text(
            "0702599238",
            style: TextStyle(color: Colors.black),
          ),
          subtitle: Row(
            children: <Widget>[
              Transform.rotate(
                angle: angle,
                child: Icon(
                  Icons.arrow_back,
                  color: type,
                ),
              ),
              Text("November 9, 21:50")
            ],
          ),
          trailing: IconButton(
              icon: Icon(
                icontype,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: null),
        ),
        Padding(
          padding: EdgeInsets.only(left: 60, right: 30),
        ),
      ],
    );
  }
}
