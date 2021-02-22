import 'package:flutter/material.dart';
import 'package:pokedex/core/colors/colors.dart';

class Display extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ClipPathBorderDisplay(),
      child: Container(
        alignment: Alignment.center,
        height: 250,
        width: 300,
        decoration: BoxDecoration(
            color: AppColors.screenFrame,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child:         Image.asset('assets/gif/pi.gif')
              ,
              margin: EdgeInsets.all(10),
              height: 180,
              width: 230,
              decoration: BoxDecoration(
                color: Color(0xff787474),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xffF61F26),
                  radius: 12,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.soundLayer0Bottom,
                        AppColors.soundLayer0Top,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.soundLayer2),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ClipPathBorderDisplay extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path()
      ..lineTo(0, size.height * .86)
      ..lineTo(size.width * .16, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
