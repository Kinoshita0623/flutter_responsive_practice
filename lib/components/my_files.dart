

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_practice/components/file_info_card.dart';
import 'package:flutter_layout_practice/models/files.dart';
import 'package:flutter_layout_practice/responsive.dart';

import '../constants.dart';

class MyFiles extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: (BuildContext context){
            return FileInfoCardGridView(
              files: fakeFiles,
              crossAxisCount: size.width < 650 ? 2 : 4,
              childAspectRatio: size.width < 650 ? 1.3 : 1,
            );
          },
          tablet: (BuildContext context) {
            return FileInfoCardGridView(files: fakeFiles);
          },
          desktop: (BuildContext context){
            return FileInfoCardGridView(
              files: fakeFiles,
              childAspectRatio: size.width < 1400 ? 1.1 : 1.4,
            );
          }
        )
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {

  final int crossAxisCount;
  final double childAspectRatio;
  final List<CloudStorageInfo> files;

  FileInfoCardGridView({
    this.crossAxisCount = 4,
    this.childAspectRatio = 1.0,
    required this.files
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: this.files.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio
      ),
      itemBuilder: (BuildContext context, int position) {
        return FileInfoCard(this.files[position]);
      }
    );

  }
}