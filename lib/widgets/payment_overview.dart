import 'package:dukaan/widgets/amount_card.dart';
import 'package:flutter/material.dart';

class PaymentOverview extends StatelessWidget {
  const PaymentOverview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Payment Overview',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Life Time',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  Icon(
                    Icons.expand_more,
                    color: Colors.grey.shade700,
                    size: 30,
                  ),
                ],
              )
            ],
          ),
        ),
        Row(
          children: const [
            AmountCard(
              color: Colors.orange,
              labelText: 'AMOUNT ON HOLD',
              amount: '0',
            ),
            SizedBox(width: 15),
            AmountCard(
              color: Colors.green,
              labelText: 'AMOUNT RECEIVED',
              amount: '13,332',
            )
          ],
        )
      ],
    );
  }
}
