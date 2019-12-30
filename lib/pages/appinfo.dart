import 'package:flutter/material.dart';

class Appinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 170,
              ),
              Text(
                "WhatsApp Messenger",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "Version 2.19.308",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/ico.png",
                height: 110,
                width: 110,
              ),
              SizedBox(
                height: 10,
              ),
              Text("@2010-2019 WhatsApp Inc."),
              SizedBox(
                height: 20,
              ),
              Text(
                "LICENCES",
                style: TextStyle(
                    color: Colors.lightBlue, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
