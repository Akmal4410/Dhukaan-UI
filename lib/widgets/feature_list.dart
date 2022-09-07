import 'package:flutter/material.dart';

class FeatureList extends StatelessWidget {
  const FeatureList({
    Key? key,
    required this.icon,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blue.shade700, width: 2),
            ),
            child: Icon(
              icon,
              size: 40,
              color: Colors.blue.shade700,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      height: 1.4,
                      color: Colors.grey.shade700),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
