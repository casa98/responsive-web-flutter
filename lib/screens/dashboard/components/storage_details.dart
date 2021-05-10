import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart_data.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

      var pairCharSelectionData = data;

    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(pairCharSelectionData: pairCharSelectionData),
          SizedBox(height: defaultPadding),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            amountOfFiles: "1.3GB",
            title: "Document files",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            amountOfFiles: "15.6GB",
            title: "Media files",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/folder.svg",
            amountOfFiles: "8.3GB",
            title: "Other files",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            amountOfFiles: "2.3GB",
            title: "Unknown",
            numOfFiles: 1328,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> get data {
    return [
      PieChartSectionData(
        value: 15.0,
      ),
      PieChartSectionData(
        color: Colors.blue,
        value: 20.0,
        showTitle: false,
      ),
      PieChartSectionData(
        color: Colors.green,
        value: 25.0,
        radius: 40,
      ),
      PieChartSectionData(
        color: Colors.yellow,
        value: 12.0,
        showTitle: false,
      ),
      PieChartSectionData(
        color: Colors.pinkAccent,
        value: 40.0,
        showTitle: false,
        radius: 33,
      ),
    ];
  }
}
