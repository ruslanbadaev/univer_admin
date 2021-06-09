import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class TimetableCard {
  final String id;
  final String title;
  final String description;
  final String route;

  TimetableCard({this.id, this.title, this.description, this.route});

  factory TimetableCard.fromJson(Map<String, dynamic> json) {
    return TimetableCard(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      route: json['route'] as String,
    );
  }

  static Future<List<TimetableCard>> getAllCards() async {
    return [
      TimetableCard.fromJson(
        {
          'id': '123',
          'title': 'Загрузить расписание',
          'description': 'Загрузить .dbf файл с расписанием на сервер',
          'route': '/add_dbf'
        },
      ),
      TimetableCard.fromJson(
        {
          'id': '124',
          'title': 'Управление моделями',
          'description': 'Создание, редактирование, удаление серверных моделей',
          'route': '/models'
        },
      ),
      TimetableCard.fromJson(
        {
          'id': '124',
          'title': 'Управление html страницами',
          'description': 'Создание, редактирование, удаление статичных страниц',
          'route': '/models'
        },
      ),
    ];
  }
}
