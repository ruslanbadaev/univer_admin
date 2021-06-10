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

  void sendFile(bool isHover) async {
    var request = http.MultipartRequest(
        'POST', Uri.parse('http://188.93.210.205:3000/timetable/dbf'));
    request.files.add(await http.MultipartFile.fromPath(
        '', '/Users/ruslan/Downloads/Расписание 40-45 неделя.DBF'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }

    notifyListeners();
  }

  void update() {
    notifyListeners();
  }

  void remove() {
    notifyListeners();
  }
}
