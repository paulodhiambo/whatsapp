import 'package:flutter/material.dart';
import 'package:whatsapp/library/Animated_float.dart';

Widget float1() {
  return Container(
    child: FloatingActionButton(
      backgroundColor: Colors.green[500],
      onPressed: null,
      heroTag: "btn1",
      tooltip: 'First button',
      child: Icon(
        Icons.edit,
        color: Colors.white,
      ),
    ),
  );
}

Widget float2() {
  return Container(
    child: FloatingActionButton(
      backgroundColor: Colors.green[500],
      onPressed: null,
      heroTag: "btn2",
      tooltip: 'Second button',
      child: Icon(
        Icons.camera_alt,
        color: Colors.white,
      ),
    ),
  );
}

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: Personal(),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black12,
            ),
            height: 30,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 7, bottom: 7),
              child: Text("Recent Updates"),
            ),
          ),
          OtherStatus(),
          OtherStatus(),
          OtherStatus(),
          OtherStatus(),
          OtherStatus(),
          OtherStatus(),
          OtherStatus(),
          OtherStatus(),
          OtherStatus(),
          OtherStatus(),
          OtherStatus(),
          OtherStatus(),
        ],
      ),
      floatingActionButton: AnimatedFloatingActionButton(
        fabButtons: <Widget>[
          float1(),
          float2(),
        ],
        colorStartAnimation: Colors.green[500],
        colorEndAnimation: Colors.green[500],
        animatedIconData: AnimatedIcons.add_event, //To principal button
      ),
    );
  }
}

class Personal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 32,
        child: Image.asset(""),
      ),
      title: Text(
        "My Status",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      subtitle: Text("Tap to add status update"),
    );
  }
}

class OtherStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 32,
        child: Image.asset(""),
      ),
      title: Text(
        "Peter",
        style: TextStyle(color: Colors.black),
      ),
      subtitle: Text("Today 7:30 am"),
    );
  }
}
