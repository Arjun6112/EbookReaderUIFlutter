import 'package:flutter/material.dart';
import 'package:flutter_book_reader/constants.dart';

class TwoSidedRoundedButton extends StatelessWidget {
  final String text;
  final double radius;
  final VoidCallback press;
  const TwoSidedRoundedButton({
    Key? key,
    required this.text,
    this.radius = 29,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: kBlackColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radius),
                bottomRight: Radius.circular(radius))),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
