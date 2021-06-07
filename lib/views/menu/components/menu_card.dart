import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class MenuCard extends StatelessWidget {
  final String title;
  final String description;

  MenuCard({
    Key key,
    @required this.title,
    @required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: [
            Text('$title'),
            Text('$description'),
          ],
        ),
      ),
    );
  }
}
