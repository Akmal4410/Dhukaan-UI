import 'package:dukaan/widgets/catalogue_product.dart';
import 'package:flutter/material.dart';

class ScreenCatalogue extends StatelessWidget {
  const ScreenCatalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        appBar: AppBar(
          backgroundColor: Colors.blue.shade700,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Catalogue'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Products',
              ),
              Tab(
                text: 'Categories',
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView(
            children: const [
              CatalogueProduct(
                imageUri:
                    'https://rukminim1.flixcart.com/image/832/832/klcmoi80/shirt/y/p/a/m-bnd-volume-marmic-fab-original-imagyhnjztevpzyn.jpeg?q=70',
                amount: '799',
                productType: 'Shirt | Outdoor | Men',
              ),
              CatalogueProduct(
                imageUri:
                    'https://cdn.shopify.com/s/files/1/0519/3865/6447/products/15862589827f03a31d8b65c25a6e4ae9920b7fd825_1340x1785.jpg?v=1644157727',
                amount: '1299',
                productType: 'Shirt | Vintage | Men',
              ),
              CatalogueProduct(
                imageUri:
                    'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/m/c/mcdcofmavengersassemblekawaii1.jpg',
                amount: '249',
                productType: 'Mug | Household',
              ),
              CatalogueProduct(
                imageUri:
                    'https://images-do.nyc3.cdn.digitaloceanspaces.com/lAVtCJXFVr/product_images/1637831748.AP0044.jpeg',
                amount: '579',
                productType: 'Shirt | Outdoor | Men',
              ),
              CatalogueProduct(
                imageUri:
                    'https://cdn.shopify.com/s/files/1/0073/5825/1059/products/ezgif.com-resize_1_911d86e6-9137-423b-9646-9dd38e0efd5a_1800x1800.jpg?v=1584057057',
                amount: '799',
                productType: 'Shirt | Outdoor | Men',
              ),
              CatalogueProduct(
                imageUri:
                    'https://www.mydesignation.com/wp-content/uploads/2021/10/KARMA-TSHIRT-mydesignation-image.jpg',
                amount: '400',
                productType: 'T-Shirt | Women',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
