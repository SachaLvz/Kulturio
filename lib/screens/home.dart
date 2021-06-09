
import 'package:flutter/material.dart';

import '../constants.dart';

class ScoreScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Spacer(),
              Text("Score", style: Theme
                  .of(context)
                  .textTheme
                  .headline3
                  .copyWith(color: kSecondaryColor)
              ),
              Spacer(),
              Text("Test",
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline3
                      .copyWith(color: kSecondaryColor)
              ),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}