import 'package:flutter/material.dart';


class CardTwo extends StatelessWidget {
  const CardTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double cardWidth = constraints.maxWidth * 0.7;
      return Center(
        child: Stack(children: [
          SizedBox(
            width: cardWidth,
            height: 250,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              color: Colors.red,
              height: 200,
              width: cardWidth,
              child: LayoutBuilder(builder: (context, cardConstraints) {
                return Center(
                  child: Container(
                    height: 50,
                    width: cardConstraints.maxWidth * 0.8,
                    color: Colors.green,
                  ),
                );
              }),
            ),
          ),
          Positioned(
              top: 25,
              left: (cardWidth / 2) - 100,
              child: Container(height: 50, width: 200, color: Colors.grey)),
        ]),
      );
    });
  }
}
