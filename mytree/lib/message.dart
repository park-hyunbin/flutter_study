import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@override
Widget build(BuildContext context) {
  return AlertDialog(
    title: Center(
      child: Text(
        '몽골 바가노루구 지역',
        style: TextStyle(
            color: Colors.white, fontSize: 30,),
      ),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  );
}
