

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'body.dart';

class QuizzScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [],
      ),
      body: Body(),
    );
  }

}