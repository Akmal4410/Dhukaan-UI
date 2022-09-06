import 'package:dukaan/widgets/rounded_dummy_button.dart';
import 'package:flutter/material.dart';

class Transations extends StatelessWidget {
  const Transations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 13.0),
          child: Text(
            'Transactions',
            style: TextStyle(
              fontSize: 21.5,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Row(
          children: [
            RoundDummyButton(
              labelText: 'On hold',
              backgroundColor: Colors.grey.shade300,
              textcolor: Colors.grey.shade700,
            ),
            RoundDummyButton(
              labelText: 'Payouts (15)',
              backgroundColor: Colors.blue.shade700,
              textcolor: Colors.white,
            ),
            RoundDummyButton(
              labelText: 'Refunds',
              backgroundColor: Colors.grey.shade300,
              textcolor: Colors.grey.shade700,
            ),
          ],
        )
      ],
    );
  }
}
