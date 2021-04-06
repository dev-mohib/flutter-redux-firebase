import 'package:flutter/material.dart';

class Feeds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(1),
        Card(2),
        Card(3),
        Card(4),
        Card(5),
        Card(6),
      ],
    );
  }
}

class Card extends StatelessWidget {
  int number;
  Card(this.number);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 1.0, // soften the shadow
                spreadRadius: 5.0, //extend the shadow
                offset: Offset(
                  5.0, // Move to right 10  horizontally
                  5.0, // Move to bottom 5 Vertically
                ),
              )
            ],
          ),
          child: Column(
            children: [
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Image.asset(
                  'assets/car.jpeg',
                  semanticLabel: 'Dash mascot',
                ),
              ),
              Text(
                "This is some Nice Description about the car",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
