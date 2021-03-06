import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: -100,
            child: Image.asset(
              "assets/images/icon2.png",
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            bottom: 0,
            right: -100,
            child: Image.asset(
              "assets/images/icon1.png",
              width: size.width * 0.4,
            ),
          ),
          child,
        ],
      ),
    );
  }
}