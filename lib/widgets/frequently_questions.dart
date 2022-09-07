import 'package:flutter/material.dart';

class FrequentlyQuestion extends StatelessWidget {
  const FrequentlyQuestion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Frequently asked questions',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          QuestionWidget(
            labelText: 'What types of businesses can use Dukaan Premium?',
            icon: Icons.remove,
          ),
          Text(
            'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online Dukaan is the perfect olatform for you.',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey.shade700,
              height: 1.5,
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          QuestionWidget(
            labelText: 'What is your refund policy?',
            icon: Icons.add,
          ),
          Divider(
            color: Colors.grey,
          ),
          QuestionWidget(
            labelText:
                'Will there be an automatic charge after the paid trial?',
            icon: Icons.add,
          ),
          Divider(
            color: Colors.grey,
          ),
          QuestionWidget(
            labelText: 'What payment methods do you offer?',
            icon: Icons.add,
          ),
          Divider(
            color: Colors.grey,
          ),
          QuestionWidget(
            labelText: 'What happens when my free trial ends?',
            icon: Icons.add,
          ),
          Divider(
            color: Colors.grey,
          ),
          QuestionWidget(
            labelText: 'What are the terms for the custom domain?',
            icon: Icons.add,
          ),
        ],
      ),
    );
  }
}

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    Key? key,
    required this.labelText,
    required this.icon,
  }) : super(key: key);

  final String labelText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              labelText,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          Icon(
            icon,
            color: Colors.grey.shade700,
          ),
        ],
      ),
    );
  }
}
