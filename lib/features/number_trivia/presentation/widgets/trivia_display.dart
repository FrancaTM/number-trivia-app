import 'package:flutter/material.dart';

import '../../domain/entities/number_trivia.dart';

class TriviaDisplay extends StatelessWidget {
  final NumberTrivia numberTrivia;

  TriviaDisplay({
    @required this.numberTrivia,
  }) : assert(numberTrivia != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Third of the size of the screen
      height: MediaQuery.of(context).size.height / 3,
      child: Column(
        children: <Widget>[
          // Fixed size, does not scroll
          Text(
            numberTrivia.number.toString(),
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Makes it fill in all the remaining space
          Expanded(
            child: Center(
              // Only the trivia "message" part will be scrollable
              child: SingleChildScrollView(
                child: Text(
                  numberTrivia.text,
                  style: TextStyle(fontSize: 25.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
