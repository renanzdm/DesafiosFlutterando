import 'package:flutter/material.dart';
import 'package:nintendo_swt/core/colors/colors.dart';
import 'package:nintendo_swt/core/components/logo/big_logo.dart';

class Screen extends StatelessWidget {
  final double height;
  final double width;

  const Screen({Key key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16, left: 12, right: 12),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.screen,
        borderRadius: BorderRadius.circular(10),
      ),
      child: BigLogo(
        color: AppColors.bigLogo,
        height: 140,
        width: 60,
        circleIntern: Colors.black,
      ),
    );
  }
}
