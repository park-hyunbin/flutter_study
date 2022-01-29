import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title:
            Text('What did you do',
              textAlign : TextAlign.center,
              style : TextStyle(color : Colors.black45)),
          backgroundColor : Colors.white

        ),
        body: Center(
          child : _buildlist()
        )
      ),
    );
  }
}
Widget _buildlist() => ListView(
  children: [
    _tile("You've achieve all your checklist","+20cents"),
    _tile("You've achieve all your checklist","+20cents"),
    _tile("You've achieve all your checklist","+20cents"),
    _tile("You've achieve all your checklist","+20cents"),
    _tile("You've achieve all your checklist","+20cents"),
  ],
);
ListTile _tile(String title, String subtitle) => ListTile(
  title : Text(title, style : TextStyle(color : Colors.black)),
  subtitle : Text(subtitle, style : TextStyle(color : Colors.green)),
  leading :
  ClipRRect(
    borderRadius: BorderRadius.circular(100),
    child : Image.asset('images/tree1.png'),
  ),
);