import 'package:flutter/material.dart';
import 'package:univer_admin/views/timetable/layouts/timetable_layout.dart';
import 'package:provider/provider.dart';
import 'package:univer_admin/models/menu/menu_model.dart';

class TimetableView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MenuModel>(
      create: (context) => MenuModel.instance(),
      child: Consumer<MenuModel>(
        builder: (context, viewModel, child) {
          return TimetableLayout();
        },
      ),
    );
  }
}
