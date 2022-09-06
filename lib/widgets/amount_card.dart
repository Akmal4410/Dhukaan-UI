import 'package:flutter/material.dart';

class AmountCard extends StatelessWidget {
  const AmountCard({
    Key? key,
    required this.color,
    required this.labelText,
    required this.amount,
  }) : super(key: key);
  final Color color;
  final String labelText;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 15),
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              labelText,
              style: const TextStyle(color: Colors.white),
            ),
            Row(
              children: [
                const Icon(
                  Icons.currency_rupee,
                  color: Colors.white,
                ),
                Text(
                  amount,
                  style: const TextStyle(color: Colors.white, fontSize: 30),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
