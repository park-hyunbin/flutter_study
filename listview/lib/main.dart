import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
    ),
    home : Scaffold(
      body : Center(
        child : _buildlist()
      )
    ),
    );
  }
}

Widget _buildlist() => ListView(
  children: [
    _tree('Seoul, Korea', '220213'),
    _tree('Daejeon, Korea', '220214')
  ]
);

ListTile _tree(String title, String subtitle) => ListTile(
  title: Text(title),
  subtitle: Text(subtitle),
  leading : Image.asset('images')
  );