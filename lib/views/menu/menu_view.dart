import 'package:flutter/material.dart';
import 'package:univer_admin/views/home/layouts/menu_layout.dart';
import 'package:provider/provider.dart';
import 'package:univer_admin/models/home/home_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeModel>(
      create: (context) => HomeModel.instance(),
      child: Consumer<HomeModel>(
        builder: (context, viewModel, child) {
          return MenuLayout();
        },
      ),
    );
  }
}
