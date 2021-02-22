import 'package:flutter/material.dart';
import 'package:nintendo_swt/core/colors/colors.dart';
import 'package:nintendo_swt/core/components/bigButton/big_button.dart';
import 'package:nintendo_swt/core/components/buttonsDirectional/button_directional.dart';
import 'package:nintendo_swt/core/components/select_button/select_button.dart';
import 'package:nintendo_swt/core/components/sound_button/sound_button.dart';

class LeftSide extends StatelessWidget {
  final double height;
  final double width;

  const LeftSide({Key key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 20),
      height: height - 36,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.leftSide,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(120),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: SelectButton(),
            ),
          ),
          SizedBox(height: height * .1),
          BigButton(),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ButtonDirectional(
              height: height,
              width: width,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(alignment: Alignment.bottomLeft, child: SoundButton()),
          )
        ],
      ),
    );
  }
}
