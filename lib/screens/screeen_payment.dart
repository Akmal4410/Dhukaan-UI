import 'package:dukaan/screens/screen_info.dart';
import 'package:dukaan/widgets/payment_method.dart';
import 'package:dukaan/widgets/payment_overview.dart';
import 'package:dukaan/widgets/transation_limit.dart';
import 'package:dukaan/widgets/transation_products.dart';
import 'package:dukaan/widgets/transations.dart';
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
            PaymentOverview(),
            Transations(),
            TransationProducts(
              imageUri:
                  'https://rukminim1.flixcart.com/image/832/832/klcmoi80/shirt/y/p/a/m-bnd-volume-marmic-fab-original-imagyhnjztevpzyn.jpeg?q=70',
              orderNo: '1688068',
              date: 'Feb 12',
              time: '02:45 PM',
              amount: "799",
            ),
            TransationProducts(
              imageUri:
                  'https://cdn.shopify.com/s/files/1/0519/3865/6447/products/15862589827f03a31d8b65c25a6e4ae9920b7fd825_1340x1785.jpg?v=1644157727',
              orderNo: '1687908',
              date: 'Feb 10',
              time: '10:06 AM',
              amount: "1299",
            ),
            TransationProducts(
              imageUri:
                  'https://images-do.nyc3.cdn.digitaloceanspaces.com/lAVtCJXFVr/product_images/1637831748.AP0044.jpeg',
              orderNo: '1787944',
              date: 'Feb 07',
              time: '08:55 PM',
              amount: "579",
            ),
            TransationProducts(
              imageUri:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/m/c/mcdcofmavengersassemblekawaii1.jpg',
              orderNo: '1887988',
              date: 'jan 30',
              time: '11:30 AM',
              amount: "249",
            ),
            TransationProducts(
              imageUri:
                  'https://cdn.shopify.com/s/files/1/0073/5825/1059/products/ezgif.com-resize_1_911d86e6-9137-423b-9646-9dd38e0efd5a_1800x1800.jpg?v=1584057057',
              orderNo: '1887902',
              date: 'jan 19',
              time: '04:40 PM',
              amount: "400",
            ),
            TransationProducts(
              imageUri:
                  'https://www.mydesignation.com/wp-content/uploads/2021/10/KARMA-TSHIRT-mydesignation-image.jpg',
              orderNo: '1888112',
              date: 'jan 04',
              time: '12:45 PM',
              amount: "350",
            ),
          ],
        ),
      ),
    );
  }
}
