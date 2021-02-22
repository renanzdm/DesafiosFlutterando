import 'package:flutter/material.dart';

class BigLogo extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  final Color circleIntern;

  const BigLogo(
      {Key key, this.color, this.height, this.width, this.circleIntern})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(right: 8),
          height: height,
          width: width,
          decoration: BoxDecoration(
            border: Border.all(color: color, width: 10),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              bottomLeft: Radius.circular(32),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: color,
              radius: 10,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 8),
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: circleIntern,
              radius: 10,
            ),
          ),
        ),
      ],
    );
  }
}
