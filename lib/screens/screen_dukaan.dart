import 'package:dukaan/widgets/dukaan_card.dart';
import 'package:dukaan/widgets/features.dart';
import 'package:dukaan/widgets/frequently_questions.dart';
import 'package:dukaan/widgets/help_section.dart';
import 'package:dukaan/widgets/youtube_video.dart';
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
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('Dukaan Premium'),
        ),
        body: ListView(
          children: [
            const DukaanCard(),
            const Features(),
            Divider(
              thickness: 3.5,
              color: Colors.grey.shade300,
            ),
            const YoutubeVideo(),
            Divider(
              thickness: 3.5,
              color: Colors.grey.shade300,
            ),
            const FrequentlyQuestion(),
            Divider(
              thickness: 3.5,
              color: Colors.grey.shade300,
            ),
            const HelpSection(),
            Divider(
              thickness: 2,
              color: Colors.grey.shade300,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Select Domain',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade700,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                      child: Text(
                        'Get Premium',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
