import 'package:dukaan/widgets/dukaan_card.dart';
import 'package:dukaan/widgets/features.dart';

import 'package:flutter/material.dart';

class ScreenDukaan extends StatelessWidget {
  const ScreenDukaan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue.shade700,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('Dukaan Premium'),
        ),
        body: ListView(
          children: [
            DukaanCard(),
            Features(),
            Divider(
              thickness: 3,
              color: Colors.grey.shade300,
            ),
          ],
        ));
  }
}
