import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kulturio/constants.dart';
import 'package:kulturio/controller/question_controller.dart';
import 'package:kulturio/models/Question.dart';
import 'package:kulturio/screens/components/option.dart';

import '../body.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key key,
    @required this.question
  }) : super(key: key);

  final Question question;


  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kBlackColor),
          ),
          SizedBox(height: kDefaultPadding / 2,),
          ...List.generate(question.options.length, (index) => Option(index: index,
              text: question.options[index],
              press: () => _controller.checkAns(question, index)))
        ],
      ),
    );
  }
}