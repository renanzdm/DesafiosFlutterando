import 'package:flutter/material.dart';
import 'package:pokedex/core/colors/colors.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: ClipPathLayerBottom(),
          child: Container(
            height: 195,
            color: Colors.black38,
          ),
        ),
        ClipPath(
          clipper: ClipPathLayerTop(),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffDC161c),
            ),
            height: 180,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: GrantLamp(),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: LedsIndicativeRow(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class GrantLamp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.lampFrame,
          width: 7,
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(colors: [
            AppColors.lampInner,
            AppColors.lampOuter,
          ], stops: [
            .7,
            1.1
          ]),
        ),
        child: Transform.translate(
          offset: -Offset(6.0, 12.0),
          child: Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  AppColors.lampShineIner,
                  AppColors.lampShineOuter,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LedsIndicativeRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      child: Row(
        children: [
          LedsIndicative(
            colorBorder: AppColors.redLedBorder,
            colors: [
              AppColors.redLedOuter,
              AppColors.redLedInner,
            ],
          ),
          LedsIndicative(
            colorBorder: AppColors.greenLedBorder,
            colors: [AppColors.greenLedOuter, AppColors.greenLedInner],
          ),
          LedsIndicative(
            colorBorder: AppColors.yellowLedBorder,
            colors: [AppColors.yellowLedOuter, AppColors.yellowLedInner],
          ),
        ],
      ),
    );
  }
}

class LedsIndicative extends StatelessWidget {
  final List<Color> colors;
  final Color colorBorder;

  const LedsIndicative({Key key, this.colors, this.colorBorder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(colors: colors),
          border: Border.all(color: colorBorder)),
    );
  }
}

class ClipPathLayerTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint = Offset(size.width * .7, size.height * .6);
    var endPoint = Offset(size.width * .73, size.height * .6);

    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(size.width * .68, size.height * .64)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, size.height * .6)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ClipPathLayerBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width * 0.52, size.height)
      ..lineTo(size.width * .72, size.height * .63)
      ..lineTo(size.width, size.height * .63)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
