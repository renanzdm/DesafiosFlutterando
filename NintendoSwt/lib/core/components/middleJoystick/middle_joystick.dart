import 'package:flutter/material.dart';
import 'package:nintendo_swt/core/colors/colors.dart';
import 'package:nintendo_swt/core/components/logo/big_logo.dart';

class MiddleJoystick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Row(
            children: [
              Column(
                children: List.generate(
                  4,
                  (index) => Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            index == 0 ? AppColors.lampOn : AppColors.lampOff),
                  ),
                ),
              ),
              Column(
                children: [
                  BigLogo(
                    color: AppColors.smallLogo,
                    height: 100,
                    width: 50,
                    circleIntern: AppColors.bgScreenBottom,
                  ),
                ],
              ),
              Column(
                children: List.generate(
                  4,
                  (index) => Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.lampOff),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
