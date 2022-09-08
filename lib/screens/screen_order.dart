import 'package:dukaan/widgets/order_basic_widget.dart';
import 'package:dukaan/widgets/order_contact_details.dart';
import 'package:dukaan/widgets/order_product_info.dart';
import 'package:flutter/material.dart';

class ScreenOrder extends StatelessWidget {
  const ScreenOrder({
    super.key,
    required this.imageUri,
    required this.orderNo,
    required this.date,
    required this.time,
    required this.amount,
  });
  final String imageUri;
  final String orderNo;
  final String date;
  final String time;
  final String amount;

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
        title: Text('Order #$orderNo'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView(
          children: [
            OrderBasicWidget(
              labelText: '$date $time',
              labelTextColor: Colors.black87,
              icon: Icons.circle,
              trailingText: 'Delivered',
              trailingTextColor: Colors.grey.shade700,
            ),
            const Divider(
              thickness: 1.5,
            ),
            OrderBasicWidget(
              labelText: '1 ITEM',
              labelTextColor: Colors.grey.shade700,
              icon: Icons.list_alt,
              trailingText: 'RECEIPT',
              trailingTextColor: Colors.blue.shade700,
            ),
            OrderProductInfo(imageUri: imageUri, amount: amount),
            const Divider(
              thickness: 1.5,
            ),
            OrderBasicWidget(
              labelText: 'Item Total',
              labelTextColor: Colors.black87,
              trailingText: '₹$amount',
              trailingTextColor: Colors.black87,
            ),
            const OrderBasicWidget(
              labelText: 'Delivary',
              labelTextColor: Colors.black87,
              trailingText: 'FREE',
              trailingTextColor: Colors.green,
            ),
            OrderBasicWidget(
              labelText: 'Grand Total',
              size: 17,
              labelTextColor: Colors.black,
              trailingText: '₹$amount',
              trailingTextColor: Colors.black87,
            ),
            const Divider(
              thickness: 1.5,
            ),
            OrderBasicWidget(
              labelText: 'CUSTOMER DETAILS',
              labelTextColor: Colors.grey.shade700,
              icon: Icons.share_outlined,
              trailingText: 'Delivered',
              trailingTextColor: Colors.blue.shade700,
            ),
            const OrderContactDetails(),
            Text(
              'ADDITIONAL INFORMATION',
              style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
            ),
            const OrderContactCard(
              title: 'State',
              subTitle: 'Karnataka',
            ),
            const OrderContactCard(
              title: 'Email',
              subTitle: 'greeniceaqua@gmail.com',
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.blue.shade700,
                  ),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                child: Text(
                  'Share receipt',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue.shade700,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
