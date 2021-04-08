import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'services',
      child: Row(
        children: [
          Column(
            children: [
              Text("HELLO HERO!"),
            ],
          )
        ],
      ),
    );
  }
}
