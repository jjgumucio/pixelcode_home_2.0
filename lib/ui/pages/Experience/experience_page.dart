import 'package:flutter/material.dart';

class ExperiencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'experience',
      child: Row(
        children: [
          Column(
            children: [
              Text("HELLO Experience!"),
            ],
          )
        ],
      ),
    );
  }
}
