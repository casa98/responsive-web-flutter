import 'package:flutter/material.dart';
import 'package:responsive_web_flutter/constants.dart';
import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header()
          ],
        ),
      ),
    );
  }
}
