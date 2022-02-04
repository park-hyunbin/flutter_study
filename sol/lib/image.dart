import 'package:flutter/material.dart';

class MapImage extends StatefulWidget {
  const MapImage({Key? key}) : super(key: key);
  _MapImageState createState() => _MapImageState();
}

class _MapImageState extends State<MapImage> with SingleTickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
    new AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween<double>(begin: 0, end: 10).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {

        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        if (_animationController.isCompleted) {
                          _animationController.reverse();
                        } else {
                          _animationController.forward();
                        }
                      },
                      child: Container(
                          child: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.identity(),
                            child: Image.asset('images/map.jpg'),
                          )
                      )
                  )
                ]
            )
        )
    );
  }
}
