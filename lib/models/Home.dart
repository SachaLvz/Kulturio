import 'package:flutter/material.dart';
import 'package:kulturio/models/Connexion.dart';

import 'Register.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 200.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 30.0),
                  Container(
                      margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Divider(
                        color: Colors.black,
                        height: 50,
                      )),
                  SizedBox(height: 30.0),
                  ElevatedButton(
                    child: Text("Connexion"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Connexion()),
                      );
                    },
                  ),
                  ElevatedButton(
                    child: Text("Inscription"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    },
                  )
                ],
              ))),
    );
  }
}
