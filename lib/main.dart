import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kulturio/screens/quiz_screen.dart';
import 'models/Home.dart';
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: QuizzScreen(),
    ),
  ));
}




