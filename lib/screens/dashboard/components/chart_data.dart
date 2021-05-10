import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key key,
    @required this.pairCharSelectionData,
  }) : super(key: key);

  final List<PieChartSectionData> pairCharSelectionData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0.0,
              centerSpaceRadius: 64.0,
              startDegreeOffset: -90,
              sections: pairCharSelectionData
            )
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: defaultPadding),
                Text(
                  "29.1",
                  style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      height: 0.5,
                    )
                ),
                Text(
                  "of 128GB"
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}