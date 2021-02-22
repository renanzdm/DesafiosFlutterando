import 'package:flutter/material.dart';
import 'package:nintendo_swt/core/colors/colors.dart';

class SelectButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 10,
      width: 30,
      decoration: BoxDecoration(
        color: AppColors.minusButtomTop,
        borderRadius: BorderRadius.circular(2),
        gradient: LinearGradient(
            colors: [AppColors.soundLayer0Top, AppColors.soundLayer0Bottom],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Container(
        height: 5,
        width: 25,
        decoration: BoxDecoration(
            color: AppColors.minusButtomTop,
            gradient: LinearGradient(colors: [
              AppColors.soundLayer1Top,
              AppColors.soundLayer1Bottom
            ])),
      ),
    );
  }
}
