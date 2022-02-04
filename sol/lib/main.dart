import 'package:flutter/material.dart';
import 'package:sol/image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset : false,
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle : true,
          title: const Text(
            'My History',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          ),
          leading: IconButton(
            icon : Icon(Icons.perm_identity,
            color : Colors.green,
            size : 35.0,
            ),
            onPressed: (){
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
            MapImage(),
            ],
          ),
        ),
      ),
    );
  }
}
