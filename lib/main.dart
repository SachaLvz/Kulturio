import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kulturio/models/Connexion.dart';
import 'package:kulturio/screens/quiz_screen.dart';
import 'package:kulturio/screens/score/score_screen.dart';
import 'models/Home.dart';
import 'dart:async';
import 'dart:convert';

import 'screens/body.dart';

void main() {
  runApp(MaterialApp(
    title: "Kulturio",
    debugShowCheckedModeBanner: false,
    home: QuizzScreen()
    ),
  );
}




