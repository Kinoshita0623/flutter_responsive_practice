
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_practice/components/storage_details.dart';
import 'package:flutter_layout_practice/constants.dart';
import 'package:flutter_layout_practice/responsive.dart';

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
            ),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      if(Responsive.isMobile(context))
                        StorageDetails()
                    ],
                  )
                ),
                if(!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                if(!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StorageDetails()
                  )
              ],
            )
          ],
        ),
      )
    );
  }
}