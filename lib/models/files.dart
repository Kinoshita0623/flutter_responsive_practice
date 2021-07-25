

import 'package:flutter/cupertino.dart';

import '../constants.dart';

class CloudStorageInfo {
  final String title;
  final String svg;
  final String totalStorage;
  final int filesCount;
  final int percentage;
  final Color? color;
  CloudStorageInfo({
    required this.title,
    required this.svg,
    required this.totalStorage,
    required this.filesCount,
    required this.percentage,
    required this.color
  });


}

final fakeFiles = [
  CloudStorageInfo(
    title: "Documents",
    filesCount: 1328,
    svg: "assets/icons/Documents.svg",
    totalStorage: "1.9GB",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Google Drive",
    filesCount: 1328,
    svg: "assets/icons/google_drive.svg",
    totalStorage: "2.9GB",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "One Drive",
    filesCount: 1328,
    svg: "assets/icons/one_drive.svg",
    totalStorage: "1GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Documents",
    filesCount: 5328,
    svg: "assets/icons/drop_box.svg",
    totalStorage: "7.3GB",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];