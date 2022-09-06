import 'package:flutter/material.dart';

class ScreenInfo extends StatefulWidget {
  const ScreenInfo({super.key});

  @override
  State<ScreenInfo> createState() => _ScreenInfoState();
}

class _ScreenInfoState extends State<ScreenInfo> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Additional Information"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.share_outlined),
                    title: Text("Share Dukaan App"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  const ListTile(
                    leading: Icon(Icons.chat_bubble_outline),
                    title: Text("Change Language"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    leading: const Icon(Icons.whatsapp),
                    title: const Text("WhatsApp Chat Support"),
                    trailing: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.lock_outline),
                    title: Text("Privacy policy"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.star_border_outlined),
                    title: Text("Rate Us"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Sign Out"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Column(
                  children: const [
                    Text("Version"),
                    Text("2.4.2"),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
