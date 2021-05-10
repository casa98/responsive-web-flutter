import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_web_flutter/constants.dart';
import 'components/chart_data.dart';
import 'components/header.dart';

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
                  child: Container(
                    padding: EdgeInsets.all(defaultPadding),
                    height: 500.0,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Column(
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
