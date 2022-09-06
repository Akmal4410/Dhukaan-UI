import 'package:flutter/material.dart';

class StoreCard extends StatelessWidget {
  const StoreCard(
      {Key? key,
      required this.labeltext,
      required this.icon,
      required this.color,
      this.trailing})
      : super(key: key);

  final String labeltext;
  final IconData icon;
  final Color color;
  final Container? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: color,
                  ),
                  height: 40,
                  width: 40,
                  child: Icon(
                    icon,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                (trailing == null) ? const SizedBox() : trailing!,
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              labeltext,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
