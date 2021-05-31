import 'package:flutter/material.dart';
import 'package:flutter_hero_list/widgets/text_customized.dart';

class AppearanceCard extends StatelessWidget {
  final String gender;
  final String race;
  final List height;
  final List weight;
  final String eyeColor;
  final String hairColor;

  AppearanceCard(
      {this.gender,
      this.race,
      this.height,
      this.weight,
      this.eyeColor,
      this.hairColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black54,
            width: 1,
          ),
        ),
        child: Column(
          children: [
            Container(
              color: Colors.black54,
              height: 40,
              width: double.maxFinite,
              child: Center(
                child: Text(
                  'Appearance',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextCustomized(
                          text: 'Gender: ',
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      TextCustomized(text: '$gender', color: Colors.grey[700]),
                    ],
                  ),
                  Divider(height: 2, color: Colors.grey[600]),
                  Row(
                    children: [
                      TextCustomized(
                          text: 'Race: ',
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      TextCustomized(text: '$race', color: Colors.grey[700]),
                    ],
                  ),
                  Divider(height: 2, color: Colors.grey[600]),
                  Row(
                    children: [
                      TextCustomized(
                          text: 'Height: ',
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      TextCustomized(text: '$height', color: Colors.grey[700]),
                    ],
                  ),
                  Divider(height: 2, color: Colors.grey[600]),
                  Row(
                    children: [
                      TextCustomized(
                          text: 'Weight: ',
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      TextCustomized(text: '$weight', color: Colors.grey[700]),
                    ],
                  ),
                  Divider(height: 2, color: Colors.grey[600]),
                  Row(
                    children: [
                      TextCustomized(
                          text: 'Eye color: ',
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      TextCustomized(
                          text: '$eyeColor', color: Colors.grey[700]),
                    ],
                  ),
                  Divider(height: 2, color: Colors.grey[600]),
                  Row(
                    children: [
                      TextCustomized(
                          text: 'Hair color: ',
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      TextCustomized(
                          text: '$hairColor', color: Colors.grey[700]),
                    ],
                  ),
                  Divider(height: 2, color: Colors.grey[600]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
