import 'package:flutter/material.dart';

class OrderContactDetails extends StatelessWidget {
  const OrderContactDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Deepa',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '+91-7829000484',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.blue.shade700,
                      size: 25,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(
                      Icons.whatsapp,
                      color: Colors.green,
                      size: 35,
                    ),
                  ],
                ),
              )
            ],
          ),
          const OrderContactCard(
            title: 'Address',
            subTitle: 'D 1101 Chartered Beverly\nHills ,Subramanyapura P.O',
          ),
          Row(
            children: const [
              Expanded(
                child: OrderContactCard(
                  title: 'City',
                  subTitle: 'Bangalore',
                ),
              ),
              Expanded(
                child: OrderContactCard(
                  title: 'Pincode',
                  subTitle: '560061',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const OrderContactCard(
                title: 'City',
                subTitle: 'Bangalore',
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.green.shade700),
                ),
                child: Center(
                  child: Text(
                    'PAID',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.green.shade700),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.5,
          ),
        ],
      ),
    );
  }
}

class OrderContactCard extends StatelessWidget {
  const OrderContactCard({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            subTitle,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
