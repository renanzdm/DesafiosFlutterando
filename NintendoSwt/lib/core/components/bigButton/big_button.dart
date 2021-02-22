import 'package:flutter/material.dart';
import 'package:nintendo_swt/core/colors/colors.dart';

class BigButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            AppColors.bigButtonLayer0Top,
            AppColors.bigButtonLayer0Bottom,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        border: Border.all(color: AppColors.bigButtonLayerBorder),
      ),
      child: Container(
        alignment: Alignment.center,
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.bigButtonLayer1Bottom,
              AppColors.bigButtonLayer1Top,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          shape: BoxShape.circle,
        ),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.bigButtonLayer2Top,
                AppColors.bigButtonLayer2Bottom
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            border: Border.all(
              color: AppColors.bigButtonLayerBorder,
            ),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
