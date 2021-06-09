import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:univer_admin/models/timetable/timetable.dart';

enum TimetableModelStatus {
  Ended,
  Loading,
  Error,
}

class TimetableModel extends ChangeNotifier {
  TimetableModelStatus _status;
  String _errorCode;
  String _errorMessage;

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  TimetableModelStatus get status => _status;

  List<TimetableCard> _cards = [];
  List<TimetableCard> get cards => _cards;

  TimetableModel();

  TimetableModel.instance() {
    getter();
  }

  void getter() async {
    _status = TimetableModelStatus.Loading;
    notifyListeners();

    try {
      _cards = await TimetableCard.getAllCards();
      _status = TimetableModelStatus.Ended;
    } catch (e) {
      _errorMessage = e.toString();
      _status = TimetableModelStatus.Error;
    }

    notifyListeners();
  }

  void setter() {
    _status = TimetableModelStatus.Loading;
    notifyListeners();
    _status = TimetableModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = TimetableModelStatus.Loading;
    notifyListeners();
    _status = TimetableModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = TimetableModelStatus.Loading;
    notifyListeners();
    _status = TimetableModelStatus.Ended;
    notifyListeners();
  }
}
