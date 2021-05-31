import 'package:flutter/material.dart';
import 'package:flutter_hero_list/widgets/text_customized.dart';

class BiographyCard extends StatelessWidget {

  final String fullName;
  final String alterEgos;
  final List aliases;
  final String placeOfBirth;
  final String firstAppearance;
  final String publisher;
  final String alignment;

  BiographyCard({this.fullName, this.alterEgos, this.aliases, this.placeOfBirth, 
    this.firstAppearance, this.publisher, this.alignment});

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
                  'Biography',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      TextCustomized(
                          text: 'Full name: ',
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      TextCustomized(text: '$fullName', color: Colors.grey[700]),
                    ],
                  ),
                  Divider(height: 2, color: Colors.grey[600]),
                  Row(
                    children: [
                      TextCustomized(
                          text: 'Alter Egos: ',
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      TextCustomized(text: '$alterEgos', color: Colors.grey[700]),
                    ],
                  ),
                  Divider(height: 2, color: Colors.grey[600]),
                  Row(
                    children: [
                      TextCustomized(
                          text: 'Aliases: ',
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      Expanded(child: TextCustomized(text: '$aliases', color: Colors.grey[700])),
                    ],
                  ),
                  Divider(height: 2, color: Colors.grey[600]),
                  Row(
                    children: [
                      TextCustomized(
                          text: 'Place of birth: ',
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      TextCustomized(text: '$placeOfBirth', color: Colors.grey[700]),
                    ],
                  ),
                  Divider(height: 2, color: Colors.grey[600]),
                  Row(
                    children: [
                      TextCustomized(
                          text: 'First appearance: ',
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      Expanded(child: TextCustomized(text: '$firstAppearance', color: Colors.grey[700])),
                    ],
                  ),
                  Divider(height: 2, color: Colors.grey[600]),
                  Row(
                    children: [
                      TextCustomized(
                          text: 'Publisher: ',
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      TextCustomized(text: '$publisher', color: Colors.grey[700]),
                    ],
                  ),
                  Divider(height: 2, color: Colors.grey[600]),
                  Row(
                    children: [
                      TextCustomized(
                          text: 'Alignment: ',
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      TextCustomized(text: '$alignment', color: Colors.grey[700]),
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
