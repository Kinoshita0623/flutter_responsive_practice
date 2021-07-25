
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_practice/constants.dart';

import '../../components/header.dart';

class DashboardScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldState;
  DashboardScreen(this.scaffoldState);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(
              onMenuPressed: (){
                if(!Scaffold.of(context).isDrawerOpen) {
                  Scaffold.of(context).openDrawer();
                }
              },
            )
          ],
        ),
      )
    );
  }
}