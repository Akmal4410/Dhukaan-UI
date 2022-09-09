import 'package:flutter/material.dart';

class CatalogueProduct extends StatelessWidget {
  const CatalogueProduct({
    Key? key,
    required this.imageUri,
    required this.amount,
    required this.productType,
  }) : super(key: key);
  final String imageUri;
  final String amount;
  final String productType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
      ),
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 100,
                width: 100,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          productType,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Text(
                      '1 Piece',
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                    Text(
                      '₹$amount',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'In Stock',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.green,
                          ),
                        ),
                        Switch(value: true, onChanged: (value) {})
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const Divider(
            thickness: 1.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.share_outlined),
              SizedBox(width: 10),
              Text(
                'Share Product',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    );
  }
}
