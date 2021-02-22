import 'package:flutter/material.dart';
import 'package:nintendo_swt/core/components/middleJoystick/middle_joystick.dart';
import 'package:nintendo_swt/core/components/sides/left_side.dart';
import 'package:nintendo_swt/core/components/sides/right_side.dart';

class JoyStick extends StatelessWidget {
  final double height;
  final double width;

  const JoyStick({Key key, this.height, this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LeftSide(
          height: height * .5,
          width: width * .35,
        ),
        MiddleJoystick(),
        RightSide(
          height: height * .5,
          width: width * .35,
        )
      ],
    );
  }
}
