import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:univer_admin/models/menu/menu_card.dart';

enum MenuModelStatus {
  Ended,
  Loading,
  Error,
}

class MenuModel extends ChangeNotifier {
  MenuModelStatus _status;
  String _errorCode;
  String _errorMessage;

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  MenuModelStatus get status => _status;

  List<MenuCard> _photos = [];
  List<MenuCard> get photos => _photos;

  MenuModel();

  MenuModel.instance() {
    getter();
  }

  void getter() async {
    _status = MenuModelStatus.Loading;
    notifyListeners();

    try {
      _photos = await MenuCard.fetchCards(http.Client());
      _status = MenuModelStatus.Ended;
    } catch (e) {
      _errorMessage = e.toString();
      _status = MenuModelStatus.Error;
    }

    notifyListeners();
  }

  void setter() {
    _status = MenuModelStatus.Loading;
    notifyListeners();
    // Add code here for setter
    _status = MenuModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = MenuModelStatus.Loading;
    notifyListeners();
    // Add code here for update
    _status = MenuModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = MenuModelStatus.Loading;
    notifyListeners();
    // Add code here for remove
    _status = MenuModelStatus.Ended;
    notifyListeners();
  }
}
