// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class Cluans extends ChangeNotifier {
  List<ClaunsModel> _cluans = [
    ClaunsModel(clue: 'Bump or Spike', answer: 'Increase', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Canoodle', answer: 'Neck', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Gluttonous sort', answer: 'Hog', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Teed off', answer: 'Irate', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Shade akin to peridot', answer: 'Lime', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Ocean predator with rows of teeth', answer: 'Shark', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Opposite of lose', answer: 'Win', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Feline with a mane', answer: 'Lion', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Device for taking pictures', answer: 'Camera', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Bright celestial body seen at night', answer: 'Star', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Instrument with six strings', answer: 'Guitar', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Frozen water', answer: 'Ice', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Man’s best friend', answer: 'Dog', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Fast-flying mammal', answer: 'Bat', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Vehicle with two wheels', answer: 'Bike', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Green gem often used in jewelry', answer: 'Emerald', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Opposite of start', answer: 'End', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Word before “storm” or “forest”', answer: 'Rain', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'Famous detective Holmes', answer: 'Sherlock', date: 'Monday, 10/06/25'),
    ClaunsModel(clue: 'King of the gods in Greek myth', answer: 'Zeus', date: 'Monday, 10/06/25'),
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
