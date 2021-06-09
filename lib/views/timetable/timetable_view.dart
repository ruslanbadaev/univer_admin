import 'package:flutter/material.dart';
import 'package:univer_admin/models/timetable/timetable_model.dart';
import 'package:univer_admin/views/timetable/layouts/timetable_layout.dart';
import 'package:provider/provider.dart';
import 'package:univer_admin/models/menu/menu_model.dart';

class TimetableView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimetableModel>(
      create: (context) => TimetableModel.instance(),
      child: Consumer<TimetableModel>(
        builder: (context, viewModel, child) {
          return TimetableLayout();
        },
      ),
    );
  }
}
