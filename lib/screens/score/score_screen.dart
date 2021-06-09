import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:kulturio/constants.dart';
import 'package:kulturio/controller/question_controller.dart';
import 'package:kulturio/screens/body.dart';

import '../quiz_screen.dart';

class ScoreScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Spacer(),
              Text("Kulturio", style: Theme.of(context)
                  .textTheme
                  .headline3
                  .copyWith(color: kSecondaryColor)
              ),
              ElevatedButton(
                child: Text("Jouer"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuizzScreen()),
                  );
                },
              ),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }

}
