import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'package:page_transition/page_transition.dart';

import 'package:univer_admin/controllers/menu/menu_controller.dart';
import 'package:univer_admin/models/menu/menu_model.dart';
import 'package:univer_admin/views/home/home_view.dart';
import 'package:univer_admin/views/menu/components/menu_card.dart';
import 'package:univer_admin/views/home/home_view.dart';

final router = FluroRouter();

class TimetableLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MenuController viewController = MenuController();
    final viewModel = Provider.of<MenuModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Загрузка файла расписания"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewController.getter(context);
        },
        child: Icon(Icons.refresh),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[],
      ),
    );
  }
}
