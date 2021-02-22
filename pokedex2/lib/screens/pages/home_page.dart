import 'package:flutter/material.dart';
import 'package:pokedex/core/components/buttons.dart';
import 'package:pokedex/core/components/display.dart';
import 'package:pokedex/core/components/header.dart';
import 'package:pokedex/core/components/hinge_cover.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF61F26),
      child: Stack(
        children: [
          Header(),
          Positioned(right: 0, bottom: 0, child: HingeCover()),
          Positioned(bottom: 220, left: 20, child: Display()),
          Positioned(left: 0, bottom: 0, child: Buttons())
        ],
      ),
    );
  }
}
