

import 'package:flutter/cupertino.dart';
import 'package:flutter_layout_practice/components/chart.dart';

import '../constants.dart';

class StorageDetails extends StatelessWidget {
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
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(height: defaultPadding,),
          Chart(),
        ],
      ),
    );
  }
}