import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('My History', style: TextStyle(color: Colors.black45)),
          backgroundColor: Colors.grey,
        ),
        body: MapPage(),
      ),
    ),
  );
}

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image(
                image: AssetImage('images/map.png'),
              ),
            ),
          ),
          Text('What did you do?',
              style : TextStyle(color : Colors.black)),
        ],

      ),
    );
  }
}


