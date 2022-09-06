import 'package:flutter/material.dart';

class TransationProducts extends StatelessWidget {
  const TransationProducts({
    Key? key,
    required this.imageUri,
    required this.orderNo,
    required this.date,
    required this.time,
    required this.amount,
  }) : super(key: key);

  final String imageUri;
  final String orderNo;
  final String date;
  final String time;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                height: 65,
                width: 65,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.network(
                    imageUri,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Order #$orderNo",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '₹$amount',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.blue.shade700,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "$date, $time",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 5.0),
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.green,
                                ),
                              ),
                              Text(
                                'Successful',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              '₹$amount deposited to: 58860200000138',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
// 'https://rukminim1.flixcart.com/image/832/832/klcmoi80/shirt/y/p/a/m-bnd-volume-marmic-fab-original-imagyhnjztevpzyn.jpeg?q=70'