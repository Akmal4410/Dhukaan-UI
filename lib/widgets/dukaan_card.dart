import 'package:flutter/material.dart';

class DukaanCard extends StatelessWidget {
  const DukaanCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                color: Colors.blue.shade700,
              ),
              Container(
                width: double.infinity,
                height: 120,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Positioned(
          top: 15,
          left: 15,
          right: 15,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.grey.shade300),
              color: Colors.white,
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 25),
              child: Column(
                children: [
                  Image.network(
                    'https://assets.stickpng.com/images/62b30f71b223544c209f5e55.png',
                    width: 200,
                  ),
                  Text(
                    'Get Dukaan Premium for just 4,999/year',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'All the advanced features for scaling your business.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
