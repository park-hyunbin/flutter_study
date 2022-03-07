import 'package:flutter/material.dart';

void main() => runApp(MyDrawer());

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  '박현빈',
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text(
                  'choiemh@naver.com',
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff41B06B),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              ListTile(
                title: Text('Seoul, Korea'),
                subtitle: Text('220213'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Daejeon, Korea'),
                subtitle: Text('220214'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
