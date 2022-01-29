import 'package:flutter/material.dart';
void main() {
  runApp(const ImageWidgetApp());
}

class ImageWidgetApp extends StatefulWidget {
  const ImageWidgetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext) {
    return Scaffold(
      body : Container(
        child : Center(
          child : Column(
            children : <Widget>[
              Image.asset('images/map.jpg')
            ]
          )
        )
      )
    );
  }
  }
