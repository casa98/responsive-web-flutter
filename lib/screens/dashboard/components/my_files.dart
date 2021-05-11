import 'package:flutter/material.dart';
import 'package:responsive_web_flutter/models/my_files.dart';
import 'package:responsive_web_flutter/responsive.dart';

import '../../../constants.dart';
import 'file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My files",
              style: Theme.of(context).textTheme.subtitle1,
            ), 
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical: defaultPadding
                ),
              ),
              onPressed: (){},
              icon: Icon(Icons.add),
              label: Text("Add new"),
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: FileInfoCardGridiView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRadio: _size.width < 650 ? 1.3 : 1,
          ),
          desktop: FileInfoCardGridiView(
            childAspectRadio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridiView extends StatelessWidget {
  const FileInfoCardGridiView({
    Key key, 
    this.crossAxisCount = 4, 
    this.childAspectRadio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRadio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: demoMyFiels.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRadio,
      ), 
      itemBuilder: (context, index) => FileInfoCard(info: demoMyFiels[index]),
    );
  }
}
