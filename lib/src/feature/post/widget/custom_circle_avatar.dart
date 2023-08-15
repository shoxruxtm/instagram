import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final double? radius;
  final ImageProvider<Object>? image;
  final bool isBorder;
  final Color? borderColor;

  const CustomCircleAvatar({
    super.key,
    this.radius = 30,
    this.image,
    this.isBorder = true,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: isBorder ? radius! * 2 + 15 : radius! * 2 + 4,
      child: DecoratedBox(
        decoration: isBorder
            ? BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                border: Border.all(color: borderColor??Colors.redAccent, width: 2.5,),
              )
            : BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                border: Border.all(color: Colors.white, width: 2.5,),
              ),
        child: Stack(
          children: [
            Center(
              child: CircleAvatar(
                radius: radius,
                foregroundImage: image,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
