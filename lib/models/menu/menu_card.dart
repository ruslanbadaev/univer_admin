import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class MenuCard {
  final String id;
  final String title;
  final String description;
  final String route;

  MenuCard({this.id, this.title, this.description, this.route});

  factory MenuCard.fromJson(Map<String, dynamic> json) {
    return MenuCard(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      route: json['route'] as String,
    );
  }

  static Future<List<MenuCard>> getAllCards() async {
    return [
      MenuCard.fromJson(
        {
          'id': '123',
          'title': 'Загрузить расписание',
          'description': 'Загрузить .dbf файл с расписанием на сервер',
          'route': 'add_dbf'
        },
      ),
      MenuCard.fromJson(
        {
          'id': '124',
          'title': 'Управление моделями',
          'description': 'Создание, редактирование, удаление серверных моделей',
          'route': 'models'
        },
      ),
      MenuCard.fromJson(
        {
          'id': '124',
          'title': 'Управление html страницами',
          'description': 'Создание, редактирование, удаление статичных страниц',
          'route': 'models'
        },
      ),
    ];
  }
}
