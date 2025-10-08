// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class Cluans extends ChangeNotifier {
  List<ClaunsModel> _cluans = [
    ClaunsModel(clue: 'Bump or Spike', answer: 'Increase', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Canoodle', answer: 'Neck', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Gluttonous sort', answer: 'Hog', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Teed off', answer: 'Irate', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Shade akin to peridot', answer: 'Lime', date: 'Monday, 10/06/25'),
  ];

  List<ClaunsModel> get cluanContent => _cluans;
  int get numCluans => _cluans.length;

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
  String? date;

  ClaunsModel({required this.clue, required this.answer, required this.date});
}
