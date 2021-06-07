import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:univer_admin/models/menu/menu_model.dart';

class MenuController {
  MenuController();

  void getter(BuildContext context) {
    MenuModel viewModel = Provider.of<MenuModel>(context, listen: false);
    viewModel.getter();
  }

  void setter(BuildContext context) {
    MenuModel viewModel = Provider.of<MenuModel>(context, listen: false);
    viewModel.setter();
  }

  void update(BuildContext context) {
    MenuModel viewModel = Provider.of<MenuModel>(context, listen: false);
    viewModel.update();
  }

  void remove(BuildContext context) {
    MenuModel viewModel = Provider.of<MenuModel>(context, listen: false);
    viewModel.remove();
  }
}
