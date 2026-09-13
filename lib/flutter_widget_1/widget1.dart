import 'package:flutter/material.dart';

class Widget1 extends StatelessWidget {
  const Widget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Ini Column'),
          Text('Ini Column'),  

          // Row ini didalam Column
          Row(
            children: [
              Text('Ini Row'),
              Text('Ini Row'),
            ],
          ),     
        ],
      )
    );
  }
}