import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int radioButton = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FILTER'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Radio(
                value: 1,
                groupValue: radioButton,
                onChanged: (value) {
                  setState(() {
                    radioButton = value;
                  });
                },
              ),
              Text('All'),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 2,
                groupValue: radioButton,
                onChanged: (value) {
                  setState(() {
                    radioButton = value;
                  });
                },
              ),
              Text('Female'),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 3,
                groupValue: radioButton,
                onChanged: (value) {
                  setState(() {
                    radioButton = value;
                  });
                },
              ),
              Text('Male'),
            ],
          ),
          SizedBox(
            height: 45,
            width: MediaQuery.of(context).size.width * 0.5,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              textColor: Colors.white,
              color: Colors.orange,
              child: Text('Filter', style: TextStyle(fontSize: 16)),
              onPressed: () {
                Navigator.of(context).pop(radioButton);
              },
            ),
          ),
        ],
      ),
    );
  }
}
