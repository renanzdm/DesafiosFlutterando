import 'package:flutter/material.dart';
import 'package:pokedex/core/colors/colors.dart';

class HingeCover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 629,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
        ),
        gradient: LinearGradient(
          colors: [
            AppColors.screenFrameBorder,
            Colors.red.shade400,
            AppColors.screenFrameBorder,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Divider(
            color: Colors.black38,
            thickness: 3,
          ),
          Divider(
            color: Colors.black38,
            thickness: 3,
          ),
        ],
      ),
    );
  }
}
