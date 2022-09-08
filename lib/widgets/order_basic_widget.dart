import 'package:flutter/material.dart';

class OrderBasicWidget extends StatelessWidget {
  const OrderBasicWidget({
    Key? key,
    required this.labelText,
    this.icon,
    this.size = 15.5,
    required this.trailingText,
    required this.trailingTextColor,
    required this.labelTextColor,
  }) : super(key: key);
  final String labelText;
  final Color labelTextColor;
  final IconData? icon;
  final String trailingText;
  final double size;
  final Color trailingTextColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            labelText,
            style: TextStyle(
              fontSize: size,
              color: labelTextColor,
            ),
          ),
          Row(
            children: [
              Icon(
                icon,
                color: Colors.blue.shade700,
                size: 17,
              ),
              SizedBox(width: 7),
              Text(
                trailingText,
                style: TextStyle(
                  fontSize: size,
                  fontWeight: FontWeight.w600,
                  color: trailingTextColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
