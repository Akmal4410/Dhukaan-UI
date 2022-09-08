import 'package:flutter/material.dart';

class OrderProductInfo extends StatelessWidget {
  const OrderProductInfo({
    Key? key,
    required this.imageUri,
    required this.amount,
  }) : super(key: key);

  final String imageUri;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: Container(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Explore | Men | Navy Blue',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text('1 piece'),
                    const Text('Size: XL'),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.blue.shade700),
                              ),
                              child: Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.blue.shade700),
                                ),
                              ),
                            ),
                            Text(
                              ' x ₹$amount',
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '₹$amount',
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
            ],
          )
        ],
      ),
    );
  }
}
