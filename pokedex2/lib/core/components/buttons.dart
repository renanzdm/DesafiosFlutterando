import 'package:flutter/material.dart';
import 'package:pokedex/core/colors/colors.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 200,
      child: Stack(
        children: [
          Positioned(
            top: 40,
            left: 20,
            child: BigButton(),
          ),
          Positioned(
            left: 180,
            top: 20,
            child: ButtonStartAndSelect(
              color: Color(0xff006690),
            ),
          ),
          Positioned(
            top: 20,
            left: 100,
            child: ButtonStartAndSelect(
              color: Color(0xffb02121),
            ),
          ),
          Positioned(
            left: 115,
            top: 50,
            child: ButtonGreen(),
          ),
          Positioned(top: 40, right: 10, child: DirectionalButton())
        ],
      ),
    );
  }
}

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
            AppColors.bigButtonLayer1Top,
            AppColors.bigButtonLayer1Bottom,
            AppColors.bigButtonLayer2Top,
            AppColors.bigButtonLayer2Bottom,
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

class ButtonStartAndSelect extends StatelessWidget {
  final Color color;

  const ButtonStartAndSelect({Key key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: color),
    );
  }
}

class ButtonGreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(color: AppColors.greenLedBorder, width: 3),
          color: Color(0xff25ae75)),
    );
  }
}

class DirectionalButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ClipPathDirectionalButton(),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColors.digitalDirectionTopLayer0Top,
            AppColors.digitalDirectionTopLayer0Bottom,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 38,
              child: Icon(
                Icons.arrow_drop_up,
                color: Colors.black,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 38,
              child: Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 38,
              left: 0,
              child: Icon(
                Icons.arrow_left,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 38,
              right: 0,
              child: Icon(
                Icons.arrow_right,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 38,
              left: 38,
              child: Icon(
                Icons.circle,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipPathDirectionalButton extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint = Offset(size.width * .7, size.height * .6);
    var endPoint = Offset(size.width * .73, size.height * .6);

    var path = Path()
      ..moveTo(0, size.height * .3)
      ..lineTo(size.width * .3, size.height * .3)
      ..lineTo(size.width * .3, 0)
      ..lineTo(size.width * .7, 0)
      ..lineTo(size.width * .7, size.height * .3)
      ..lineTo(size.width, size.height * .3)
      ..lineTo(size.width, size.height * .68)
      ..lineTo(size.width * .7, size.height * .68)
      ..lineTo(size.width * .7, size.height)
      ..lineTo(size.width * .3, size.height)
      ..lineTo(size.width * .3, size.height * .68)
      ..lineTo(0, size.height * .68);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
