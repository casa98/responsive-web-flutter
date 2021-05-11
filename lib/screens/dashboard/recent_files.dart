import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_web_flutter/models/recent_files.dart';

import '../../constants.dart';

class RecentFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              "Recent files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(
              width: double.infinity,
              child: DataTable(
                horizontalMargin: 0.0,
                columns: [
                  DataColumn(
                    label: Text("File name"),
                  ),
                  DataColumn(
                    label: Text("Date"),
                  ),
                  DataColumn(
                    label: Text("Size"),
                  ),
                ],
                rows: List.generate(
                  demoRecentFiles.length, (index) => 
                      recentFileDataRow(demoRecentFiles[index]))
              ),
            ),
          ],
        ),
    );
  }

  DataRow recentFileDataRow(RecentFile fileInfo) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              SvgPicture.asset(
                fileInfo.icon,
                width: 30.0,
                height: 30.0,
              ),
              SizedBox(width: defaultPadding),
              Text(
                fileInfo.title,
              ),
            ],
          ),
        ),
        DataCell(
          Text(fileInfo.date),
        ),
        DataCell(
          Text(fileInfo.size),
        ),
      ]
    );
  }
}