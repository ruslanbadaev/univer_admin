import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:univer_admin/models/timetable/timetable_model.dart';

class MenuController {
  MenuController();

  void getter(BuildContext context) {
    TimetableModel viewModel =
        Provider.of<TimetableModel>(context, listen: false);
    viewModel.getter();
  }

  void setter(BuildContext context) {
    TimetableModel viewModel =
        Provider.of<TimetableModel>(context, listen: false);
    viewModel.setter();
  }

  void setHover(BuildContext context, bool isHover) {
    TimetableModel viewModel =
        Provider.of<TimetableModel>(context, listen: false);
    viewModel.setHover(isHover);
  }

  void update(BuildContext context) {
    TimetableModel viewModel =
        Provider.of<TimetableModel>(context, listen: false);
    viewModel.update();
  }

  void remove(BuildContext context) {
    TimetableModel viewModel =
        Provider.of<TimetableModel>(context, listen: false);
    viewModel.remove();
  }
}
