import 'package:dukaan/widgets/store_cards.dart';
import 'package:flutter/material.dart';

class ScreenManageOrder extends StatefulWidget {
  const ScreenManageOrder({super.key});

  @override
  State<ScreenManageOrder> createState() => _ScreenManageOrderState();
}

class _ScreenManageOrderState extends State<ScreenManageOrder> {
  int selectedIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: const Text("Manage order"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 1.3,
          ),
          children: const [
            StoreCard(
              labeltext: "Marketing\nDesigns",
              icon: Icons.volume_up,
              color: Colors.orangeAccent,
            ),
            StoreCard(
              labeltext: "Online\nPayments",
              icon: Icons.currency_rupee,
              color: Colors.green,
            ),
            StoreCard(
              labeltext: "Discount\nCoupons",
              icon: Icons.discount,
              color: Colors.orange,
            ),
            StoreCard(
              labeltext: "My\nCustomers",
              icon: Icons.group,
              color: Colors.teal,
            ),
            StoreCard(
              labeltext: "Store QR\nCode",
              icon: Icons.qr_code_scanner,
              color: Colors.grey,
            ),
            StoreCard(
              labeltext: "Extra\nCharges",
              icon: Icons.payments,
              color: Colors.purple,
            ),
            StoreCard(
              labeltext: "Order\nForms",
              icon: Icons.article,
              color: Colors.purpleAccent,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue.shade700,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.currency_rupee), label: "Order"),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: "Product"),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_search), label: "Manage"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}
