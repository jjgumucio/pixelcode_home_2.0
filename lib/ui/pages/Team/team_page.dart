import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'team',
      child: Row(
        children: [
          Column(
            children: [
              Text("HELLO Team!"),
            ],
          )
        ],
      ),
    );
  }
}
