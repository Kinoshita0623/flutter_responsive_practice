

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_practice/models/recent_file.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class RecentFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent files",
            style: Theme.of(context).textTheme.subtitle1
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: [
                DataColumn(label: Text('File Name')),
                DataColumn(label: Text('Data')),
                DataColumn(label: Text('Size'))
              ],
              rows: List.generate(fakeRecentFiles.length, (index){
                final info = fakeRecentFiles[index];
                return DataRow(cells: [
                  DataCell(
                    Row(
                      children: [
                        SvgPicture.asset(
                          info.icon,
                          height: 30,
                          width: 30
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                          child: Text(info.title),
                        ),
                      ],
                    ),
                  ),
                  DataCell(Text(info.date)),
                  DataCell(Text(info.size)),
                ]);
              }),
            ),
          )
        ],
      ),
    );
  }
}

