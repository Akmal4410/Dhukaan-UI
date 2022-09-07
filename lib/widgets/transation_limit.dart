import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TransationLimit extends StatelessWidget {
  const TransationLimit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: Colors.grey.shade400),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Transation Limit',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'A free limit up to which you will recieve the online payments directly in your bank',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            LinearPercentIndicator(
              padding: const EdgeInsets.all(0),
              barRadius: const Radius.circular(10),
              width: MediaQuery.of(context).size.width - 60,
              lineHeight: 8.0,
              percent: 0.3,
              progressColor: Colors.blue,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                '36,668 left out of 50,000',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade700,
                ),
                child: const Text('Increse Limit'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
