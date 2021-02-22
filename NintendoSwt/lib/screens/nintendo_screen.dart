import 'package:flutter/material.dart';
import 'package:nintendo_swt/core/colors/colors.dart';
import 'package:nintendo_swt/core/components/joystick/joystick.dart';
import 'package:nintendo_swt/core/components/screen/screen.dart';

class NintendoScreen extends StatefulWidget {
  @override
  _NintendoScreenState createState() => _NintendoScreenState();
}

class _NintendoScreenState extends State<NintendoScreen> {
  @override
  Widget build(BuildContext context) {
    var sizes = MediaQuery.of(context).size;

    return Material(
      child: Container(
        height: sizes.height,
        width: sizes.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.bgScreenTop,
              AppColors.bgScreenBottom,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Container(
              child: Screen(
                height: sizes.height * .5,
                width: sizes.width * .9,
              ),
            ),
            Container(
              child: JoyStick(
                height: sizes.height,
                width: sizes.width,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
