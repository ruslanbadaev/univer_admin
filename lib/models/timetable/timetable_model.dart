import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:univer_admin/models/timetable/timetable.dart';

class TimetableModel extends ChangeNotifier {
  Timetable _timetable;
  Timetable get timetable => _timetable;

  TimetableModel();

  TimetableModel.instance() {
    getter();
  }

  void getter() async {
    print('getter');
    _timetable = Timetable(hover: false);
    notifyListeners();
  }

  void setter() {
    notifyListeners();
  }

  void setHover(bool isHover) {
    _timetable.hover = isHover;
    notifyListeners();
  }

  void update() {
    notifyListeners();
  }

  void remove() {
    notifyListeners();
  }
}
