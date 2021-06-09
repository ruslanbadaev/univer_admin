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
    MenuController viewController = MenuController();
    final viewModel = Provider.of<TimetableModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Загрузка файла расписания"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            viewController.getter(context);
          },
          child: Icon(
            Icons.file_download_rounded,
          )),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Stack(
            children: [
              DropZone(
                  onDragEnter: () {
                    viewModel.setHover(true);

                    print('drag enter');
                  },
                  onDragExit: () {
                    viewModel.setHover(false);

                    print('drag exit');
                  },
                  onDrop: (List<html.File> files) {
                    print(files[0].name);
                    print(files[0].size);
                    print('files dropped');
                  },
                  child: Container(
                    color: viewModel.timetable.hover == null ||
                            !viewModel.timetable.hover
                        ? Colors.red
                        : Colors.green,
                    width: 300,
                    height: 300,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
