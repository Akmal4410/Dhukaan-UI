import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({
    Key? key,
    required this.leadingText,
    required this.trailingtext,
  }) : super(key: key);
  final String leadingText;
  final String trailingtext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leadingText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            children: [
              Text(
                trailingtext,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade700,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey.shade700,
                size: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
