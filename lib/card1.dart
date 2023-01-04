import 'package:flutter/material.dart';

class CardOne extends StatelessWidget {
  const CardOne({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Center(
        child: Container(
          color: Colors.red,
          height: 200,
          width: constraints.maxWidth * 0.7,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 50, width: 200, color: Colors.grey),
                LayoutBuilder(builder: (context, cardConstraints) {
                  return Container(
                    height: 50,
                    width: cardConstraints.maxWidth * 0.9,
                    color: Colors.green,
                  );
                })
              ],
            ),
          ),
        ),
      );
    });
  }
}
