import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image(
              image: AssetImage(
                'images/map.png',
              ),
            ),
          ),
          Text('What did you do for?',
              style: TextStyle(fontSize: 50, color: Colors.black)),
          TextField(),
          Padding(
            padding: EdgeInsets.all(15),
            child: ElevatedButton(
              child: const Text('submit'),
              onPressed: () {
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
