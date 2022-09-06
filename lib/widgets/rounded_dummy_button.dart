import 'package:flutter/material.dart';

class RoundDummyButton extends StatelessWidget {
  const RoundDummyButton({
    Key? key,
    required this.backgroundColor,
    required this.textcolor,
    required this.labelText,
  }) : super(key: key);
  final Color backgroundColor;
  final Color textcolor;
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
        child: Text(
          labelText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: textcolor,
          ),
        ),
      ),
    );
  }
}
