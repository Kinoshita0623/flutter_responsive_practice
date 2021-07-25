
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_practice/responsive.dart';
import 'package:flutter_layout_practice/screens/dashboard/dashboard_screen.dart';

import '../../side_menu.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State {

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isDesktop(context))
              Expanded(child: SideMenu()),
            Expanded(flex: 5, child: DashboardScreen(scaffoldKey))
          ],
        ),
      ),
    );
  }
}