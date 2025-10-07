import 'package:flutter/material.dart';
import 'package:frasedia_app/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 5, 20, 0), // Left, Top, Right, Bottom
            child: AppBar(
              title: Text("Frases Aleatórias"),
              titleTextStyle: TextStyle(color: Colors.white,fontSize: 40),
              backgroundColor: Colors.green,
            ),
          ),
        ),
        body: Center(
          child: Home(),
        ),
      ),
  ));
}
