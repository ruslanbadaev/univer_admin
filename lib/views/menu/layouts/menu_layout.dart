import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

import 'package:univer_admin/controllers/home/home_controller.dart';
import 'package:univer_admin/models/home/home_model.dart';
import 'package:univer_admin/views/home/components/photo_card.dart';
import 'package:univer_admin/views/home/components/photo_error_card.dart';

class MenuLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeController viewController = HomeController();
    final viewModel = Provider.of<HomeModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("MTUCI ADMIN"),
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
