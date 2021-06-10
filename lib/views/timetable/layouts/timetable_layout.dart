import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'package:page_transition/page_transition.dart';
import 'package:drop_zone/drop_zone.dart';
import 'dart:html' as html;

import 'package:univer_admin/controllers/timetable/timetable_controller.dart';
import 'package:univer_admin/models/timetable/timetable_model.dart';
import 'package:univer_admin/views/home/home_view.dart';

class TimetableLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TimetableController viewController = TimetableController();
    final viewModel = Provider.of<TimetableModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Загрузка файла расписания"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Stack(
              children: [
                DropZone(
                  onDragEnter: () {
                    viewController.setHover(context, true);
                  },
                  onDragExit: () {
                    viewController.setHover(context, false);
                  },
                  onDrop: (List<html.File> files) {
                    viewController.setHover(context, false);
                    viewController.sendFile(
                      context,
                      files[files.length - 1].relativePath,
                    );
                  },
                  child: Container(
                    color: viewModel.timetable.hover == null ||
                            !viewModel.timetable.hover
                        ? Colors.red
                        : Colors.green,
                    width: 300,
                    height: 300,
                    child: Text(viewModel.timetable.hover
                        ? 'Отпустите кнопку мыши'
                        : 'Перетяните файл в эту зону'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
