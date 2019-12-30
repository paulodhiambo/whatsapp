import 'package:flutter/material.dart';

class Chatscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
              child: Image.asset(""),
            ),
            title: Text(
              "paul...",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text("online", style: TextStyle(color: Colors.white)),
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.call,
                color: Colors.white,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: null),
        ],
      ),
      body: Container(
        height: double.maxFinite,
        decoration: BoxDecoration(color: Colors.black12),
        child: Stack(
          children: <Widget>[
            new Positioned(
              child: Align(
                child: ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[Text("")],
                    )
                  ],
                ),
              ),
            ),
            new Positioned(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  color: Colors.black26,
                  padding: EdgeInsets.only(top: 4),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Container(
                      //color: Colors.black26,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 45,
                            width: 250,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 3),
                                  child: Icon(Icons.insert_emoticon),
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Ty"
                                          "pe a mess..",
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Transform.rotate(
                                    angle: -70, child: Icon(Icons.attach_file)),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 8, left: 4),
                                  child: Icon(Icons.camera_alt),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Container(
                              height: 45,
                              width: 44,
                              child: CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.teal,
                                child: Icon(
                                  Icons.mic,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
