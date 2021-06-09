import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'package:univer_admin/views/menu/menu_view.dart';
import 'package:univer_admin/views/timetable/timetable_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ADMIN APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/menu':
            return PageTransition(
              child: MenuView(),
              type: PageTransitionType.leftToRightWithFade,
              settings: settings,
            );
            break;
          case '/add_dbf':
            return PageTransition(
              child: TimetableView(),
              type: PageTransitionType.leftToRightWithFade,
              settings: settings,
            );
            break;
          default:
            return null;
        }
      },
      home: MenuView(),
    );
  }
}
