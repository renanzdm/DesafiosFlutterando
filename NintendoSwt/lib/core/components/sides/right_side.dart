import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nintendo_swt/core/colors/colors.dart';
import 'package:nintendo_swt/core/components/bigButton/big_button.dart';
import 'package:nintendo_swt/core/components/buttonsDirectional/button_directional.dart';
import 'package:nintendo_swt/core/components/homeButton/home_button.dart';
import 'package:nintendo_swt/core/components/letter_buttons/letter_button.dart';
import 'package:nintendo_swt/core/components/select_button/select_button.dart';
import 'package:nintendo_swt/core/components/sound_button/sound_button.dart';

class RightSide extends StatelessWidget {
  final double height;
  final double width;

  const RightSide({Key key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 20),
      height: height - 36,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.rightSide,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(120),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 8,
          ),
          Transform.translate(
            offset: Offset(-15.0, 20.0),
            child: Align(
              alignment: Alignment.topRight,
              child: SelectButton(),
            ),
          ),
          Transform.translate(
            offset: Offset(39.0, 11.0),
            child: Transform.rotate(
              angle: pi * .5,
              child: SelectButton(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: LetterButton(
              height: height,
              width: width,
            ),
          ),
          SizedBox(height: height * .1),
          BigButton(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(alignment: Alignment.bottomRight, child: HomeButton()),
          )
        ],
      ),
    );
  }
}
