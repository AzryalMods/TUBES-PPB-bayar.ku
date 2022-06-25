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
      height: size.height,
      width: double.infinity,
      child: Stack (
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: -30,
            child: Image.asset(
              'assets/images/icon1.png',
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: -30,
            left: -30,
            child: Image.asset(
              'assets/images/icon2.png',
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            left: 100,
            top: 250,
            child: Image.asset(
              'assets/images/icon2.png',
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            left: 400,
            child: Image.asset(
              'assets/images/icon2.png',
              width: size.width * 0.3,
            ),
          ),
          child,
        ],
      ),
    );
  }
}