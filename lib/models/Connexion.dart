import 'package:flutter/material.dart';
import 'Home.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Connexion extends StatelessWidget {

  TextEditingController user = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(

          padding: EdgeInsets.symmetric(vertical: 200.0, horizontal: 60.0),
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: "E-mail", ),
                controller: user,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Mot de passe"),
              ),
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
                    _login();
                },
              ),
              ElevatedButton(
                child: Text("Retour"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              ),
            ],
          ))),
    ));
  }
}

String username = '';

TextEditingController user = new TextEditingController();
TextEditingController pass = new TextEditingController();

String msg = '';

Future<List> _login() async {
  final response = await http.post("http://10.0.2.2/kulturio/bdd/application/check_account.php", body: {
    "email": user.text,
    "mdp": pass.text,
  });

  var dataUser = json.decode(response.body);


print(dataUser);

}
