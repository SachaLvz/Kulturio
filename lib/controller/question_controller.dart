import 'dart:convert';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:kulturio/models/Question.dart';
import 'package:kulturio/screens/score/score_screen.dart';

import 'package:http/http.dart' as http;

class QuestionController extends GetxController with SingleGetTickerProviderMixin {

  AnimationController _animationController;
  Animation _animation;

  Animation get animation => this._animation;

  PageController _pageController;

  PageController get pageController => this._pageController;

  List<Question> _qestions = sample_data
      .map(
        (question) => Question(
        id: question['id'],
        question: question['question'],
        options: question['options'],
        answer: question['answer_index']),
  )
      .toList();


  List<Question> get questions => this._qestions;

  bool _isAnwerded = false;

  bool get isAnswered => this._isAnwerded;

  int _correctAns;

  int get correctAns => this._correctAns;

  int _selectedAns;

  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;

  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;

  int get numOfCorrectAns => this._numOfCorrectAns;

  @override
  Future<void> onInit() async {
    _animationController =
        AnimationController(duration: Duration(seconds: 30), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });

    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex){
    _isAnwerded = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if(_correctAns == _selectedAns) _numOfCorrectAns++;

    _animationController.stop();
    update();

    Future.delayed(Duration(seconds: 3), () {
      nextQuestion();
    });

  }

  void nextQuestion() {
    if(_questionNumber.value != questions.length){
      _isAnwerded = false;
      _pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.ease);
      _animationController.reset();
      _animationController.forward().whenComplete(nextQuestion);
    }
    MaterialPageRoute(builder: (context) => ScoreScreen());
  }

  void updateTheQnNum(int index){
    _questionNumber.value = index + 1;
  }

}

