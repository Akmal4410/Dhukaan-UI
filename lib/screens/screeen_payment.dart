import 'package:dukaan/screens/screen_info.dart';
import 'package:dukaan/widgets/payment_method.dart';
import 'package:dukaan/widgets/transation_limit.dart';
import 'package:flutter/material.dart';

class ScreenPayment extends StatelessWidget {
  const ScreenPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Payments'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const ScreenInfo()));
                },
                icon: const Icon(Icons.info_outline)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: const [
            TransationLimit(),
            PaymentMethod(
              leadingText: 'Default Method',
              trailingtext: 'Online Payments',
            ),
            PaymentMethod(
              leadingText: 'Payment Profile',
              trailingtext: 'Bank Account',
            ),
            Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
