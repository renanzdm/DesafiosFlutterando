import 'package:flutter/material.dart';
import 'package:nintendo_swt/core/colors/colors.dart';

class HomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(colors: [
          AppColors.soundLayer0Top,
          AppColors.soundLayer0Bottom,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Container(
        alignment: Alignment.center,
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              AppColors.soundLayer0Bottom,
              AppColors.soundLayer0Top,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Icon(Icons.home),
      ),
    );
  }
}
