import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kulturio/models/Question.dart';
import 'package:kulturio/screens/components/progress_bar.dart';

import '../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Stack(
          children: [
            SafeArea(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                children: [
                  ProgressBar(),
                   Text.rich(
                    TextSpan(
                    text: "Question 1",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: kSecondaryColor),
                      children: [
                        TextSpan(text: "/10", style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(color: kSecondaryColor)),
                      ]
                   ),
                  ),
                  Divider(thickness: 1.5,),
                  SizedBox(height: kDefaultPadding),
                  Container(
                    padding: EdgeInsets.all(kDefaultPadding),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        Text(
                          sample_data[0]['question'],
                          style: Theme.of(context).textTheme.headline6.copyWith(color: kBlackColor),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: kDefaultPadding),
                          padding: EdgeInsets.all(kDefaultPadding),
                          decoration: BoxDecoration(
                              border: Border.all(color: kGrayColor),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "1. Test",
                                style: TextStyle(color: kGrayColor, fontSize: 16),
                              ),
                            Container(
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: kGrayColor)

                              ),
                            )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        );
  }
}