import 'package:dukaan/widgets/feature_list.dart';
import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  const Features({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Features',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
          ),
          FeatureList(
            icon: Icons.language,
            title: 'Custom domain name',
            subTitle:
                'Get your own custom domain and build your brand on the internet.',
          ),
          FeatureList(
            icon: Icons.verified_outlined,
            title: 'Verified seller badge',
            subTitle:
                'Get green verified badge under your store name and build trust',
          ),
          FeatureList(
            icon: Icons.laptop_mac_outlined,
            title: 'Dukaan for PC',
            subTitle:
                'Access all the exclusive premium features on Dukaan for PC.',
          ),
          FeatureList(
            icon: Icons.headset_mic_outlined,
            title: 'Priority support',
            subTitle:
                'Get your questions resolved with our priority customer support.',
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
