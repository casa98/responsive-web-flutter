import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_web_flutter/constants.dart';
import 'components/header.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pairCharSelectionData = [
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

    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 500.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: defaultPadding),
                Expanded(
                  flex: 2,
                  child: StorageDetails(pairCharSelectionData: pairCharSelectionData),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
