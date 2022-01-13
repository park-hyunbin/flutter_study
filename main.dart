import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor : Colors.lightBlue[200],
        ),
        body : const Center(
          child: Image(
            image : AssetImage('images/snowball.png'),
          ),
        ),
      ),
    ),
  );
}
