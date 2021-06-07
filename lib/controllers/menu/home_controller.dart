import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:univer_admin/models/menu/menu_card.dart';

class MenuController {
  MenuController();

  void getter(BuildContext context) {
    MenuCard viewModel = Provider.of<MenuCard>(context, listen: false);
    viewModel.getter();
  }

  void setter(BuildContext context) {
    MenuCard viewModel = Provider.of<MenuCard>(context, listen: false);
    viewModel.setter();
  }

  void update(BuildContext context) {
    MenuCard viewModel = Provider.of<MenuCard>(context, listen: false);
    viewModel.update();
  }

  void remove(BuildContext context) {
    MenuCard viewModel = Provider.of<MenuCard>(context, listen: false);
    viewModel.remove();
  }
}
