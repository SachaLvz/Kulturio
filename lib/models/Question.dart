import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:kulturio/controller/question_controller.dart';

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';

class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});

}
const List sample_data = [
  {
    "id": 1,
    "question": "Qui a 13 LDC ?",
    "options": ["Real Madrid", "OM", "Barcelone", "PSG"],
    "answer_index": 0,

  },
  {
    "id": 2,
    "question": "Qui a gagné la nba en 1996",
    "options": ["Lakers", "Bulls", "Cavaliers", "Clippers"],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "Qui est le plus jeune MVP (NBA)",
    "options": ["D.Rose", "L.James", "M.Jordan", "S.Curry"],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "Le championnat Français est ",
    "options": ["Premiere league", "Liga", "ligue 1", "serie a"],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "Qui a le plus de ballon d'or",
    "options": ["Mitroglou", "Pelé", "Germain", "Messi"],
    "answer_index": 3,
  },
  {
    "id": 6,
    "question": "Mitroglou a un ballon d'or",
    "options": ["Vrai", "Faux", "", ""],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "Qui affrontait la France",
    "options": ["Brésil", "Italie", "", ""],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "Qui est le numéro 1 mondial au tennis",
    "options": ["Nadal", "Tsitsipas", "Djokovic", "Federer"],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question": "Tout les combiens d'années se joue la coupe du monde",
    "options": ["2 ans", "4 ans", "3 ans", "5 ans"],
    "answer_index": 0,
  },
  {
    "id": 10,
    "question": "l'OM a une LDC",
    "options": ["Vrai", "Faux", "", ""],
    "answer_index": 0,
  },
  {
    "id": 11,
    "question": "PSG a une LDC",
    "options": ["Vrai", "Faux", "", ""],
    "answer_index": 1,
  },
  {
    "id": 12,
    "question": "Qui est Lebron James ",
    "options": ["Basketteur", "Footballeur", "", ""],
    "answer_index": 0,
  },
  {
    "id": 13,
    "question": "Ou a joué Wilt Chamberlain",
    "options": ["Lakers", "Clippers", "Bulls", "Raptors"],
    "answer_index": 0,
  },
  {
    "id": 14,
    "question": "En quelle année a été inventé le basket-ball ?",
    "options": ["1891", "1902", "1931", "1940"],
    "answer_index": 0,
  },
  {
    "id": 15,
    "question": "Qui a été élu MVP de la saison régulière ? (2005-2006)",
    "options": ["Kobe Bryant", "Lebron James", "Steve Nash", "Dwayne Wade"],
    "answer_index": 2,
  },
  {
    "id": 16,
    "question": "Combien de temps a-t-on le droit de rester dans la raquette ?(basket)",
    "options": ["5s", "4s", "2s", "3s"],
    "answer_index": 3,
  },
  {
    "id": 17,
    "question": "En NBA, quel a été le premier match de la saison régulière ? (31/10/06)",
    "options": ["Miami - Chicago", "Cleveland - San Antonio", "Dallas - Chicago", "New York - New Jersey"],
    "answer_index": 0,
  },
  {
    "id": 18,
    "question": "Qui a remporté le Mondial 2006 ? (basket)",
    "options": ["France", "États-Unis", "Espagne", "Grèce"],
    "answer_index": 2,
  },
  {
    "id": 19,
    "question": "Qui a remporté le Mondial 1998 ? (Foot)",
    "options": ["France", "Italie", "Brésil", "suisse"],
    "answer_index": 0,
  },
  {
    "id": 20,
    "question": "Qui a 5 LDC ?",
    "options": ["Barcelone", "real madrid", "PSG", "EA Guingamp"],
    "answer_index": 0,
  }
];


/*Future<List> getQuestions() async {

  QuestionController _controller = Get.put(QuestionController());

  final questions = await http.post("http://10.0.2.2/select_questions.php");
  final reponses = await http.post("http://10.0.2.2/select_reponses.php");

  if (questions.body.isNotEmpty) {
    var questionsData = json.decode(questions.body);
    var reponsesData = json.decode(reponses.body);

    for (int i = 0; questions.contentLength > i; i++) {
      _controller.questions.add(new Question(id: questionsData["questions"], answer: questionsData["questions"] , question: questionsData["question_text"]));
    }
  }
}*/

