import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class MenuCard {
  final int id;
  final String title;
  final String description;
  final String route;

  MenuCard({this.id, this.title, this.description, this.route});

  factory MenuCard.fromJson(Map<String, dynamic> json) {
    return MenuCard(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      route: json['route'] as String,
    );
  }

  static Future<List<MenuCard>> getAllCards() async {
    return [];
  }
}
