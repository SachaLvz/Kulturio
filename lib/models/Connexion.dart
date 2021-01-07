import 'package:flutter/material.dart';
import 'Home.dart';

class Connexion extends StatelessWidget {
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
                decoration: InputDecoration(labelText: "E-mail"),
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
                onPressed: () {},
              ),
              ElevatedButton(
                child: Text("Retour"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              )
            ],
          ))),
    ));
  }
}
