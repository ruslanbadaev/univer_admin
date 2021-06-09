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
    _timetable = Timetable();
    notifyListeners();
  }

  void setter() {
    notifyListeners();
  }

  void update() {
    notifyListeners();
  }

  void remove() {
    notifyListeners();
  }
}
