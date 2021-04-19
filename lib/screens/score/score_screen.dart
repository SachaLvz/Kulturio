import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:kulturio/constants.dart';
import 'package:kulturio/controller/question_controller.dart';

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
              Text("Score", style: Theme.of(context)
                  .textTheme
                  .headline3
                  .copyWith(color: kSecondaryColor)
              ),
              Spacer(),
              Text( "${_qnController.correctAns}/${_qnController.questions.length}",
                  style: Theme.of(context)
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
