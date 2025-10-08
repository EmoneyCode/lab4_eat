// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class Cluans extends ChangeNotifier {
  List<ClaunsModel> _cluans = [
    ClaunsModel(clue: 'Bump or Spike', answer: 'Increase'),
    ClaunsModel(clue: 'Canoodle', answer: 'Neck'),
    ClaunsModel(clue: 'Gluttonous sort', answer: 'Hog'),
    ClaunsModel(clue: 'Teed off', answer: 'Irate'),
    ClaunsModel(clue: 'Shade akin to peridot', answer: 'Lime'),
  ];

  List<ClaunsModel> get cluanContent => _cluans;
  int get numCluans => _cluans.length;

  void addCluan({required String clue, required String answer}) {
    _cluans.add(
      ClaunsModel(clue: clue, answer: answer),
    );
    notifyListeners();
  }

  void sortByClue(){
    _cluans.sort((a,b)=>a.clue!.toString().compareTo(b.clue!.toString()));
    notifyListeners();
  }

  void sortByAnswer(){
    _cluans.sort((a,b)=>a.answer!.length.compareTo(b.answer!.length));
    notifyListeners();
  }
}

class ClaunsModel {
  String? clue;
  String? answer;

  ClaunsModel({required this.clue, required this.answer});
}
