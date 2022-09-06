import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ScreenPayment extends StatelessWidget {
  const ScreenPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text('Payments'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Transation Limit'),
                  Text(
                      'A free limit up to whichyo will recieve the online payment in the bank'),
                  LinearPercentIndicator(
                    barRadius: Radius.circular(10),
                    width: 300,
                    lineHeight: 8.0,
                    percent: 0.3,
                    progressColor: Colors.blue,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
