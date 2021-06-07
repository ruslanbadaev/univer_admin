import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:univer_admin/models/home/home_model.dart';

class HomeController {
  HomeController();

  void getter(BuildContext context) {
    HomeModel viewModel = Provider.of<HomeModel>(context, listen: false);
    viewModel.getter();
  }

  void setter(BuildContext context) {
    HomeModel viewModel = Provider.of<HomeModel>(context, listen: false);
    viewModel.setter();
  }

  void update(BuildContext context) {
    HomeModel viewModel = Provider.of<HomeModel>(context, listen: false);
    viewModel.update();
  }

  void remove(BuildContext context) {
    HomeModel viewModel = Provider.of<HomeModel>(context, listen: false);
    viewModel.remove();
  }
}
